package Event.Servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Event.Model.Event;
import Event.Model.IEvents;
import EventService.EventImpl;

@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateEventServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        Event event = new Event();
        String eventId = request.getParameter("eventid");
        event.setEventId(eventId);
        event.setEname(request.getParameter("eventName"));
        event.setEtype(request.getParameter("eventType"));

        // Handle the eventImage parameter, which might be null
//        String eventImageParameter = request.getParameter("eventImage");
//        if (eventImageParameter != null) {
//            event.setEimg(eventImageParameter.trim());
//        } else {
//            // Set a default value for eventImage or handle the case as needed
//            event.setEimg(""); // You can set an empty string or any other default value
//        }

        
            event.setEprice(Float.parseFloat(request.getParameter("eventPrice")));
       

        IEvents ievents = new EventImpl();
        ievents.updateEvent(eventId, event);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/pmenu.jsp");
        dispatcher.forward(request, response);
    }
}
