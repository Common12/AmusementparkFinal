




import static com.opensymphony.xwork2.Action.SUCCESS;
import com.universal.dao.UserDao;
import com.universal.dto.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.universal.dao.ParkDao;
import com.universal.dto.Park;
import java.io.File;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 */
public class Controller extends ActionSupport implements ServletRequestAware{
    Park park;
    
    User user;
 private File uploadFile;
 private String uploadFileContentType;
 private String uploadFileFileName; 
HttpServletRequest servletRequest=null;
      ArrayList<Park> parkList;

 
    public ArrayList<Park> getParkList() {
        return parkList;
    }

    public void setParkList(ArrayList<Park> parkList) {
        this.parkList = parkList;
    }

   



    public HttpServletRequest getServletRequest() {
        return servletRequest;
    }

    

    public File getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String getUploadFileContentType() {
        return uploadFileContentType;
    }

    public void setUploadFileContentType(String uploadFileContentType) {
        this.uploadFileContentType = uploadFileContentType;
    }

    public String getUploadFileFileName() {
        return uploadFileFileName;
    }

    public void setUploadFileFileName(String uploadFileFileName) {
        this.uploadFileFileName = uploadFileFileName;
    }

    public Park getPark() {
        return park;
    }

    public void setPark(Park park) {
        this.park = park;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    
   
    
     public String signup(){
         ServletContext servletContext = getServletRequest().getSession().getServletContext();
    String realPathofProject = servletContext.getRealPath("/");
   String removeBuildFromPath=realPathofProject.replace(File.separator+"build","");
   String destinationFolder=removeBuildFromPath+"upload";
   File filePath=new File(destinationFolder,this.uploadFileFileName);
   try{
       System.out.println("===================="+filePath);
        FileUtils.copyFile(uploadFile, filePath);
        String imagename=filePath.getName();
        park.setImagename(imagename);
       ParkDao.addParkRecord(park);
     
   }
   catch(Exception e){
       e.printStackTrace();
   }
        System.out.println(destinationFolder);
   // UserDao.addRecord(user);
        return SUCCESS;
    }
     public String userSignup(){
      UserDao.addUserRecord(user);
       return SUCCESS;
         
     }

    @Override
    public void setServletRequest(HttpServletRequest servletrequest) {
       this.servletRequest=servletrequest;
    }

    public String validateUser(){
      
        boolean userValid = UserDao.isUserValid(user);
            if(userValid){
                
      
                return SUCCESS;
            }
            else 
            {
                 return ERROR;           
      
    }
       
    }
    
    public String parkRecord(){
        HttpServletRequest request = getServletRequest();
        int id=Integer.parseInt(request.getParameter("parkid"));
        
        
        park  = ParkDao.getParkRecord(id);
        System.out.println(park.getImagename());
        System.out.println("======================hello===================="+park);
          
           /*  if(userValid){
                return SUCCESS;
            }
            else{
                return  ERROR;
            }   */
        return SUCCESS;
        
        
    }
   // public String load(){
 
    //   UserDao.autoLoad(user);
    //    return SUCCESS;
    //}
   
}
 