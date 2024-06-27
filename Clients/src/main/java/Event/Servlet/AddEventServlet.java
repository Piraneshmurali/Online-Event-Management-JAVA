package Event.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Event.Model.Event;
import EventService.EventImpl;
import Event.Model.IEvents;




@WebServlet("/AddEventServlet")
public class AddEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public AddEventServlet(){
    	super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        Event event = new Event();

        // Retrieve data from the form
        String eventIdStr = request.getParameter("eventid");
        String eventName = request.getParameter("eventName");
        String eventDescription = request.getParameter("eventDescription");
        String eventImage = request.getParameter("eventImage");
        String eventType = request.getParameter("eventType");
        String eventPriceStr = request.getParameter("eventPrice");

        // Perform basic validation
        if (eventIdStr != null && !eventIdStr.isEmpty()) {
            event.setEventId(eventIdStr);
        }
        if (eventName != null) {
            event.setEname(eventName);
        }
        if (eventDescription != null) {
            event.setEdesc(eventDescription);
        }
        if (eventImage != null) {
            event.setEimg(eventImage);
        }
        if (eventType != null) {
            event.setEtype(eventType);
        }
        if (eventPriceStr != null && !eventPriceStr.isEmpty()) {
            event.setEprice(Float.parseFloat(eventPriceStr));
        }

        // Insert the event into the database
        IEvents ievents = new EventImpl();
        ievents.addEvent(event);

        // Forward the request to a confirmation page
        request.setAttribute("event", event);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/pmenu.jsp");
        dispatcher.forward(request, response);
    }
}


