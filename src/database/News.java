package database;

import java.util.Map;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import database.DBUtil;

public class News {
	private String id;
	private String title;
	private String author;
	private String content;
	private String view;
	private String dis_num;
	private String from;
	private String discuss;
	private DBUtil db;
	private String fileid;
	private String disc;
	private String path;
	private String condition;
	private String uname;
	private String message;
	private String sender;
	private String editor;
	private String who;
	private String why;
	private String login_name;
	Date nowTime=new Date(); 
	SimpleDateFormat time=new SimpleDateFormat("yyyy"+"年"+"MM"+"月"+"dd"+"日\n"+"HH"+":"+"mm"+":"+"ss"); 
	private String date=time.format(nowTime);
	public News(){
		db=new DBUtil();
	}
	
	public String getLogin_name() {
		return login_name;
	}

	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}

	public String getWhy() {
		return why;
	}

	public void setWhy(String why) {
		this.why = why;
	}

	public String getWho() {
		return who;
	}

	public void setWho(String who) {
		this.who = who;
	}

	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getUname(){
		return uname;
	}
	public String getMessage(){
		return message;
	}
	public void setUname(String uname){
		this.uname=uname;
	}
	public void setMessage(String message){
		this.message=message;
	}
	public String getCondition(){
		return condition;
	}
	public String getDisNum(){
		return dis_num;
	}
	public String getFrom(){
		return from;
	}
	public String getFileid(){
		return fileid;
	}
	public String getDisc(){
		return disc;
	}
	public String getPath(){
		return path;
	}
	public String getId(){
		return id;
	}
	public String getTitle(){
		return title;
	}
	public String getAuthor(){
		return author;
	}
	public String getDate(){
		return date;
	}
	public String getContent(){
		return content;
	}
	public String getView(){
		return view;
	}
	public String getDiscuss(){
		return discuss;
	}
	public void setCondition(String condition){
		this.condition=condition;
	}
	public void setId(String id){
		this.id=id;
	}
	public void setTitle(String title){
		this.title=title;
	}
	public void setAuthor(String author){
		this.author=author;
	}
	public void setDate(String date){
		this.date=date;
	}
	public void setContent(String content){
		this.content=content;
	}
	public void setView(String view){
		this.view=view;
	}
	public void setDis_Num(String dis_num){
		this.dis_num=dis_num;
	}
	public void setFrom(String from){
		this.from=from;
	}
	public void setDiscuss(String discuss){
		this.discuss=discuss;
	}
	public void setFileid(String fileid){
		this.fileid=fileid;
	}
	public void setDisc(String disc){
		this.disc=disc;
	}
	public void setPath(String path){
		this.path=path;
	}
	public List allMessages(){
		List user=null;
		String sql="select * from messages";
		user=db.getList(sql, null);
		return user;
	}
	public int addmessage(){
		int reslut=0;
		String sql="insert into messages (uname,message,date) values(?,?,?)";
		String[] params={uname,message,date};
		reslut=db.update(sql, params);
		return reslut;
	}
	public List getAllDis(){
		List news=null;
		String sql="select * from newsdis";
		news=db.getList(sql, null);
		return news;
	}
	public List getSigleDis(){
		List news=null;
		String sql="select * from newsdis where news_id=?";
		String[] params={id};
		news=db.getList(sql, params);
		return news;
	}
	public List getAllImg(){
		List news=null;
		String sql="select * from file";
		news=db.getList(sql, null);
		return news;
	}
	//读取所有的新闻
	public List getAllNews(){
		List news=null;
		String sql="select * from workspace";
		news=db.getList(sql, null);
		return news;
	}
	public List getWiterNews(){ 
		List news=null;
		String sql="select * from workspace where editor=?";
		String[] params= {"writer"};
		news=db.getList(sql, params);
		return news;
	}
	public List getWhoesNews(){
		List news=null;
		String sql="select * from workspace where login_name=?";
		String[] params= {login_name};
		news=db.getList(sql, params);
		return news;
	}
	public List getUsersNews(){
		List news=null;
		String sql="select * from workspace where login_name=?";
		String[] params= {login_name};
		news=db.getList(sql, params);
		return news;
	}
	public List getCheckerNews(){
		List news=null;
		String sql="select * from workspace where editor=? and state=? or ?";
		String[] params= {"writer","未审核","<p><span style=\\\"color: rgb(79, 129, 189);\\\">审核中</span></p>"};
		news=db.getList(sql, params);
		return news;
	}
	public List getAdminNews(){
		List news=null;
		String sql="select * from workspace where editor=? and state=?";
		String[] params= {"writer","<p><span style=\"color: rgb(250, 192, 143);\">初审通过</span></p>"};
		news=db.getList(sql, params);
		return news;
	}
	public List getPassNews(){
		List news=null;
		String sql="select * from workspace where editor=? and state=?";
		String[] params= {"writer","<p><span style=\"color: rgb(146, 208, 80);\">审核通过</span></p>"};
		news=db.getList(sql, params);
		return news;
	}
	public Map getSingleNews(){
		Map singlenews=null;
		String sql="select * from workspace where id=?";
		String[] params={id};
		singlenews=db.getMap(sql, params);
		return singlenews;
	}
	public int addNews(){
		int result=0;
		String sql="insert into workspace values(null,?,?,?,?,?,?,?,?,null,null,null)";
		String[] params={title,author,login_name,editor,sender,date,content,"未审核"};
		result=db.update(sql, params);
		return result;
	}
	public int addImg(){
		int result=0;
		String sql="insert into file values(null,?,?)";
		String[] params={path,disc};
		result=db.update(sql, params);
		return result;
	}
	public Map getNews(){
		Map singlenews=null;
		String sql="select * from workspace where id=?";
		String[] params={id};
		singlenews=db.getMap(sql, params);
		return singlenews;
	}
	public int updateNews(){
		int result=0;
		String sql="update workspace set title=?,author=?,sender=?,date=?,content=? where id=?";
		String params[]={title,author,sender,date,content,id};
		result=db.update(sql, params);
		return result;
	}
	public int delNews(){
		int result=0;
		String sql="delete from workspace where id=?";
		String[] params={id};
		result=db.update(sql, params);
		return result;
	}
	public int clickNews(){
		int result=0;
		String sql="update workspace set state=?,who=?,time=? where id=?";
		String[] params={"<p><span style=\"color: rgb(79, 129, 189);\">审核中</span></p>",who,date,id};
		result=db.update(sql, params);
		return result;
	}
	public int passNews(){
		int result=0;
		String sql="update workspace set state=?,who=?,time=? where id=?";
		String[] params={"<p><span style=\"color: rgb(250, 192, 143);\">初审通过</span></p>",who,date,id};
		result=db.update(sql, params);
		return result;
	}
	public int adminpassNews(){
		int result=0;
		String sql="update workspace set state=?,who=?,time=? where id=?";
		String[] params={"<p><span style=\"color: rgb(146, 208, 80);\">审核通过</span></p>",who,date,id};
		result=db.update(sql, params);
		return result;
	}
	public int refuseNews(){
		int result=0;
		String sql="update workspace set state=?,who=?,time=? where id=?";
		String[] params={"<p><span style=\"color: rgb(255, 0, 0);\">审核未通过</span></p>",who,date,id};
		result=db.update(sql, params);
		return result;
	}
	public String getView(String num){
		String view=null;
		Map singlenews=null;
		String sql="select * from newslist where id=?";
		String[] params={num};
		singlenews=db.getMap(sql, params);
		view=(String)singlenews.get("view");
		int viewnum=Integer.parseInt(view)+1;
		view=Integer.toString(viewnum);
		return view;
	}
	public int addview(){
		int result=0;
		String sql="update newslist set view=? where id=?";
		String[] params={getView(id),id};
		result=db.update(sql, params);
		return result;
	}
	public String getDis_Num(String disnum){
		String view=null;
		Map singlenews=null;
		String sql="select * from newsdis where news_id=?";
		String[] params={disnum};
		singlenews=db.getMap(sql, params);
		view=(String)singlenews.get("dis_num");
		int viewnum=Integer.parseInt(view)+1;
		view=Integer.toString(viewnum);
		return view;
	}
	public int addDis_Num(){
		int result=0;
		String sql="update newsdis set dis_num=? where news_id=?";
		String[] params={getDis_Num(id),id};
		result=db.update(sql, params);
		return result;
	}
	public int addwhy(){
		int result=0;
		String sql="update newsuser set why=? where username=?";
		String[] params={getDis_Num(id),id};
		result=db.update(sql, params);
		return result;
	}
	/*public int addview(){
		int result=0;
		String sql="update newslist set view=? where id=?";
		String[] params={getView(id),id};
		result=db.update(sql, params);
		return result;
	}*/
	public String Enc(String string){
		try {
			string=URLEncoder.encode(string, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return string;
	}
}
