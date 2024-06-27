 package Event.Model;

public class Event {
	
	private String eventId;
	
	private String ename;
	
	private String edesc;
	
	private float eprice;
	
	private String eimg;
	
	private String etype;

	public String getEimg() {
		return eimg;
	}

	public void setEimg(String eimg) {
		this.eimg = eimg;
	}

	public String getEtype() {
		return etype;
	}

	public void setEtype(String etype) {
		this.etype = etype;
	}

	public String getEventId() {
		return eventId;
	}

	public void setEventId(String eventId) {
		this.eventId = eventId;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEdesc() {
		return edesc;
	}

	public void setEdesc(String edesc) {
		this.edesc = edesc;
	}

	public float getEprice() {
		return eprice;
	}

	public void setEprice(float eprice) {
		this.eprice = eprice;
	}

}
