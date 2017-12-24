package database;

import java.util.Map;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import database.DBUtil;

public class Music {
	private String id;
	private String from;
	private String to;
	private String state;
	private String phone;
	private String song;
	private String singer;
	private String song_id;
	private String who;
	private String content;
	private String zan;
	private String username;
	private String password;
	private DBUtil db;
	Date nowTime=new Date(); 
	SimpleDateFormat time=new SimpleDateFormat("yyyy"+"年"+"MM"+"月"+"dd"+"日\n"+"HH"+":"+"mm"+":"+"ss"); 
	private String date=time.format(nowTime);
	public Music(){
		db=new DBUtil();
	}
	
	public String getSong() {
		return song;
	}

	public void setSong(String song) {
		this.song = song;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDate() {
		return date;
	}
	public String getView(String num){
		String view=null;
		Map singlenews=null;
		String sql="select * from songs where id=?";
		String[] params={num};
		singlenews=db.getMap(sql, params);
		view=(String)singlenews.get("zan");
		int viewnum=Integer.parseInt(view)+1;
		view=Integer.toString(viewnum);
		return view;
	}
	public int addview(){
		int result=0;
		String sql="update songs set zan=? where id=?";
		String[] params={getView(id),id};
		result=db.update(sql, params);
		return result;
	}
	public Map getSingleSong(){
		Map singlenews=null;
		String sql="select * from songs where id=?";
		String[] params={id};
		singlenews=db.getMap(sql, params);
		return singlenews;
	}
	public void setDate(String date) {
		this.date = date;
	}

	public List allMusic(){
		List user=null;
		String sql="select * from music";
		user=db.getList(sql, null);
		return user;
	}
	public List allNews(){
		List user=null;
		String sql="select * from news";
		user=db.getList(sql, null);
		return user;
	}
	public List allQuestions(){
		List user=null;
		String sql="select * from question";
		user=db.getList(sql, null);
		return user;
	}
	public List allLost(){
		List user=null;
		String sql="select * from lost";
		user=db.getList(sql, null);
		return user;
	}
	public List allCop(){
		List user=null;
		String sql="select * from cop";
		user=db.getList(sql, null);
		return user;
	}
	public List allSongs(){
		List user=null;
		String sql="select * from songs";
		user=db.getList(sql, null);
		return user;
	}
	public int addMusic(){
		int reslut=0;
		String sql="insert into music values(null,?,?,?,?,?,?,?)";
		
		String[] params={from,phone,song,singer,to,date,"未播出"};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public int addUser(){
		int reslut=0;
		String sql="insert into users values(null,?,?,?)";
		String[] params={username,password,phone};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public int addMusic_Dis(){
		int reslut=0;
		String sql="insert into song_dis values(null,?,?,?,?)";
		String[] params={song_id,who,date,content};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public int addNews(){
		int reslut=0;
		String sql="insert into news values(null,?,?,?,?)";
		String[] params={from,phone,to,date};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public int addQuestion(){
		int reslut=0;
		String sql="insert into question values(null,?,?,?,?)";
		String[] params={from,phone,to,date};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public int addLost(){
		int reslut=0;
		String sql="insert into lost values(null,?,?,?,?,?)";
		String[] params={from,phone,singer,to,date};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public int addCop(){
		int reslut=0;
		String sql="insert into cop values(null,?,?,?,?)";
		String[] params={from,phone,to,date};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public int addSongs(){
		int reslut=0;
		String sql="insert into songs values(null,?,?,?,?,?,?)";
		String[] params={from,phone,singer,song,date,"0"};
		reslut=db.update(sql, params);
		System.out.println(sql+"\n"+params.toString());
		return reslut;
	}
	public List getMusic(){
		List news=null;
		String sql="select * from music where id=?";
		String[] params={id};
		news=db.getList(sql, params);
		return news;
	}
	public int updateMusic(){
		int result=0;
		String sql="update music set state=? where id=?";
		String params[]={"<p><span style=\\\"color: rgb(146, 208, 80);\\\">已播出</span></p>",id};
		result=db.update(sql, params);
		return result;
	}
	public int delMusic(){
		int result=0;
		String sql="delete from music where id=?";
		String[] params={id};
		result=db.update(sql, params);
		return result;
	}
	public int adminpassMusic(){
		int result=0;
		String sql="update workspace set state=?,who=?,time=? where id=?";
		String[] params={"<p><span style=\"color: rgb(146, 208, 80);\">点歌通过</span></p>","管理员",date,id};
		result=db.update(sql, params);
		return result;
	}

	public String getSong_id() {
		return song_id;
	}

	public void setSong_id(String song_id) {
		this.song_id = song_id;
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

	public String getZan() {
		return zan;
	}

	public void setZan(String zan) {
		this.zan = zan;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
