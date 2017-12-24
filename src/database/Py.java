package database;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Py {
	private String id;
	private String who;
	private String content;
	private String money;
	private String location;
	private String how_long;
	private DBUtil db;
	Date nowTime=new Date(); 
	SimpleDateFormat time=new SimpleDateFormat("yyyy"+"Äê"+"MM"+"ÔÂ"+"dd"+"ÈÕ\n"+"HH"+":"+"mm"+":"+"ss"); 
	private String date=time.format(nowTime);
	public Py(){
		db=new DBUtil();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getHow_long() {
		return how_long;
	}
	public void setHow_long(String how_long) {
		this.how_long = how_long;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public List Listall(){
		List user=null;
		String sql="select * from mark";
		user=db.getList(sql, null);
		return user;
	}
	public int addMark(){
		int reslut=0;
		String sql="insert into mark values(null,?,?,?,?,?,?)";
		String[] params={who,content,money,location,how_long,date,};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
}