


package database;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sun.media.jfxmedia.track.Track.Encoding;

public class Login {
	private String username;
	private String password;
	private DBUtil db;
	Date nowTime=new Date(); 
	SimpleDateFormat time=new SimpleDateFormat("yyyy"+"Äê"+"MM"+"ÔÂ"+"dd"+"ÈÕ\n"+"HH"+":"+"mm"+":"+"ss"); 
	private String date=time.format(nowTime);
	public Login(){
		db=new DBUtil();
	}
	public String getusername(){
		return username;
	}
	public String getpassword(){
		return password;
	}
	public void setusername(String username){
		this.username=username;
	}
	public void setpassword(String password){
		this.password=password;
	}
	public int updatePassWord(){
		int result=0;
		String sql="update student set pass=? where name=?";
		String params[]={password,username};
		result=db.update(sql, params);
		return result;
	}
	public List alluser(){
		List user=null;
		String sql="select * from student";
		user=db.getList(sql, null);
		return user;
	}
	public Map checkuser(){
		Map reslut=null;
		String sql="select * from student where name=?";
		String[] params={username};
		reslut=db.getMap(sql, params);
		return reslut;
	}
	public int adduser(){
		int reslut=0;
		String sql="insert into student (name,pass) values(?,?)";
		String[] params={username,password};
		reslut=db.update(sql, params);
		return reslut;
	}
	public String getIpAddr(HttpServletRequest request) { 
		String ip = request.getHeader("x-forwarded-for"); 
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		ip = request.getHeader("Proxy-Client-IP"); 
		} 
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		ip = request.getHeader("WL-Proxy-Client-IP"); 
		} 
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		ip = request.getRemoteAddr(); 
		} 
		return ip; 
	} 
}