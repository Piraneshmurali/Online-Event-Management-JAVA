package EventService;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import Event.Model.Event;
import Event.Model.IEvents;
import Event.Util.DBConnectionUtil;



public class EventImpl implements IEvents {
    private static final Logger log = Logger.getLogger(EventImpl.class.getName());
    private Connection connection;
    private PreparedStatement preparedStatement;

    public EventImpl() {
        // Initialize the database connection in the constructor
        try {
            connection = DBConnectionUtil.getDBConnection();
        } catch (SQLException | ClassNotFoundException e) {
            log.log(Level.SEVERE, e.getMessage());
        }
    }

    @Override
    public void addEvent(Event event) {
        try {
            String queryInsert = "INSERT INTO events (eid, ename, edes, eimg, etype, eprice) VALUES (?, ?, ?, ?, ?, ?)";
            
            preparedStatement = connection.prepareStatement(queryInsert);
            connection.setAutoCommit(false);
            
            preparedStatement.setString(1, event.getEventId());
            preparedStatement.setString(2, event.getEname());
            preparedStatement.setString(3, event.getEdesc());
            preparedStatement.setString(4, event.getEimg());
            preparedStatement.setString(5, event.getEtype());
            preparedStatement.setFloat(6, event.getEprice());
            
            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                connection.commit();
            }
        } catch (SQLException e) {
            log.log(Level.SEVERE, e.getMessage());
        } finally {
            closeResources();
        }
    }

    @Override
    public Event getEventByID(String eventId) {
        Event event = null;
        try {
            String queryGetById = "SELECT * FROM events WHERE eid=?";
            
            preparedStatement = connection.prepareStatement(queryGetById);
            preparedStatement.setString(1, eventId);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                event = new Event();
                event.setEventId(resultSet.getString("eid"));
                event.setEname(resultSet.getString("ename"));
                event.setEdesc(resultSet.getString("edes"));
                event.setEimg(resultSet.getString("eimg"));
                event.setEtype(resultSet.getString("etype"));
                event.setEprice(resultSet.getFloat("eprice"));
            }
        } catch (SQLException e) {
            log.log(Level.SEVERE, e.getMessage());
        } finally {
            closeResources();
        }
        return event;
    }

    @Override
    public ArrayList<Event> getEvents() {
        ArrayList<Event> eventList = new ArrayList<>();
        try {
            String queryGetAll = "SELECT * FROM events";
            
            preparedStatement = connection.prepareStatement(queryGetAll);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Event event = new Event();
                event.setEventId(resultSet.getString("eid"));
                event.setEname(resultSet.getString("ename"));
                event.setEdesc(resultSet.getString("edes"));
                event.setEimg(resultSet.getString("eimg"));
                event.setEtype(resultSet.getString("etype"));
                event.setEprice(resultSet.getFloat("eprice"));
                
                eventList.add(event);
            }
        } catch (SQLException e) {
            log.log(Level.SEVERE, e.getMessage());
        } finally {
            closeResources();
        }
        return eventList;
    }

    @Override
    public Event updateEvent(String eventId, Event event) {
        try {
            String queryUpdate = "UPDATE events SET ename=?, etype=?, eprice=? WHERE eid=?";
            
            preparedStatement = connection.prepareStatement(queryUpdate);
            connection.setAutoCommit(false);
            preparedStatement.setString(1, event.getEname());
            preparedStatement.setString(2, event.getEtype());
            preparedStatement.setFloat(3, event.getEprice());
            preparedStatement.setString(4, eventId);
            
            preparedStatement.execute();
			connection.commit();
        } catch (SQLException e) {
            log.log(Level.SEVERE, e.getMessage());
        } finally {
            closeResources();
        }
        return event;
    }


    @Override
    public void removeEvent(String eventId) {
        try {
            String queryRemove = "DELETE FROM events WHERE eid=?";
            
            preparedStatement = connection.prepareStatement(queryRemove);
            preparedStatement.setString(1, eventId);
            
            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                connection.commit();
            }
        } catch (SQLException e) {
            log.log(Level.SEVERE, e.getMessage());
        } finally {
            closeResources();
        }
    }

    private void closeResources() {
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            log.log(Level.SEVERE, e.getMessage());
        }
    }
}
