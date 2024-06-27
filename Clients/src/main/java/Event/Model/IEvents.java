package Event.Model;

import java.util.ArrayList;

public interface IEvents {
	public void addEvent(Event event);
	
	public Event getEventByID(String eventID);
	
	public ArrayList<Event> getEvents();
	
	public Event updateEvent(String roomID, Event event);
	
	public void removeEvent(String roomID);

}
