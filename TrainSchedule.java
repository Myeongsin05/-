package frontweb.vo;
// import="frontweb.database.TrainScheduleDao"
//  import="frontweb.vo.TrainScheduleDao"


public class TrainSchedule {
	private String tno;
	private String ttype;
	private String depSt;
	private String arrSt;
	private String seatInfo;
	private int price;
	private double time;
	public TrainSchedule() {
	
	}
	public TrainSchedule(String tno, String ttype, String depSt, String arrSt, String seatInfo, int price,
			double time) {
		this.tno = tno;
		this.ttype = ttype;
		this.depSt = depSt;
		this.arrSt = arrSt;
		this.seatInfo = seatInfo;
		this.price = price;
		this.time = time;
	}
	public TrainSchedule(String depSt, String arrSt) {
		this.depSt=depSt;
		this.arrSt=arrSt;
	}
	public String getTno() {
		return tno;
	}
	public void setTno(String tno) {
		this.tno = tno;
	}
	public String getTtype() {
		return ttype;
	}
	public void setTtype(String ttype) {
		this.ttype = ttype;
	}
	public String getDepSt() {
		return depSt;
	}
	public void setDepSt(String depSt) {
		this.depSt = depSt;
	}
	public String getArrSt() {
		return arrSt;
	}
	public void setArrSt(String arrSt) {
		this.arrSt = arrSt;
	}
	public String getSeatInfo() {
		return seatInfo;
	}
	public void setSeatInfo(String seatInfo) {
		this.seatInfo = seatInfo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getTime() {
		return time;
	}
	public void setTime(double time) {
		this.time = time;
	}
	
	
	

}
