package com.javen.controller;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javen.model.User;
import com.javen.service.IUserService;
import com.javen.util.Page;
  
  
@Controller  
@RequestMapping("/user")  
// /user/**
public class UserController {  
	private static Logger log=LoggerFactory.getLogger(UserController.class);
	 @Resource  
	 private IUserService userService;     
    
    // /user/test?id=1
    @RequestMapping(value="/test",method=RequestMethod.GET)  
    public String test(HttpServletRequest request,Model model){  
        int userId = Integer.parseInt(request.getParameter("id"));  
        System.out.println("userId:"+userId);
        User user=null;
        if (userId==1) {
        	 user = new User();  
        	 user.setAge(11);
        	 //user.setId(1);
        	 user.setPassword("123");
        	 user.setUserName("javen");
		}
       
        log.debug(user.toString());
        this.userService.addUserInfo(user);
        model.addAttribute("user", user);  
        return "index";  
    }  
    @RequestMapping("/login")
    public String login(HttpServletRequest request){
    	String username = request.getParameter("loginname");  
        String password = request.getParameter("loginpass");  
        User user = new User();  
        //把接收到的值放入po里  
        user.setUserName(username); 
        user.setPassword(password); 
        //调service方法去数据库验证  
        User user2 = userService.dologin(user);  
        if(user2!=null){  

            return "redirect:userlist";  
        }else{              
            return "index";  
        }      
    }
    @RequestMapping("/userlist")//为方法设置访问路径  
    public String userList(HttpServletRequest request){  
    	
        int start=0;
        int count=5;
        try {
            start = Integer.parseInt(request.getParameter("page.start"));
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {
        }
        Page page = new Page(start, count);
        //使用pageHelper来设置分页
        PageHelper.offsetPage(page.getStart(),page.getCount());
        List<User> ulist = userService.getUserList();  
        //使用pageHelper来获取总数
        int total = (int) new PageInfo<User>(ulist).getTotal();
        page.setTotal(total);
        //把值存到request作用域里，传到页面上  
        request.setAttribute("ulist", ulist);   
        request.setAttribute("page", page);
        //跳转的mian.jsp页面  
        return "main";  
    } 
    @RequestMapping("/select")
    public String select(HttpServletRequest request,Model model){
    	String username = request.getParameter("username");  
        int age = Integer.parseInt(request.getParameter("age"));  
        User user = new User();  
        //把接收到的值放入po里  
        user.setUserName(username); 
        user.setAge(age);
        //调service方法去数据库验证  
        User user2 = userService.selectByNameandAge(user);  
        if(user2!=null){  
        	log.debug(user2.toString());
            model.addAttribute("user", user2);  
            return "showUser"; 
        }else{              
            return "queryfail";  
        }      
    }
   
   
    @RequestMapping("/uid")//为方法设置访问路径  
    public String updateid(HttpServletRequest request, User user){  
        List<User> uid = userService.getupdateid(user);  
        request.setAttribute("uid", uid);  
        return "update";  
    } 
    @RequestMapping(value="/delete/{id}")  
    public ModelAndView delete(@PathVariable("id")int id){  
        String deleteUser=userService.getdelete(id);  
        ModelAndView mav=new ModelAndView();  
        mav.addObject("deleteUser", deleteUser);  
        //跳到提醒页，返回service里定义的方法，提醒删除成功还是失败  
        mav.setViewName("tx");  
        return mav; 
    }
    /**  
     * 修改用户信息  
     */  
    @RequestMapping(value="/update")//为方法设置访问路径  
    public String update(HttpServletRequest request, User user){          
        String updateUser = userService.getupdate(user);          
        request.setAttribute("updateUser", updateUser);  
        //修改信息后留在当前页  
        return "gxtx";          
    }  
    @RequestMapping("/getinsert")//为方法设置访问路径  
    public String getinsert(HttpServletRequest request){  
        return "insert";  
    }  
    /**  
     * 添加用户信息  
     */  
    @RequestMapping("/insert")//为方法设置访问路径  
    public String insert(HttpServletRequest request, User user ){  
        String inserUser = userService.getinsert(user);  
        request.setAttribute("inserUser", inserUser);
        
        return "crtx";  
    }  
    // /user/showUser?id=1
    @RequestMapping(value="/showUser",method=RequestMethod.GET)  
    public String toIndex(HttpServletRequest request,Model model){  
        int userId = Integer.parseInt(request.getParameter("id"));  
        System.out.println("userId:"+userId);
        User user = this.userService.getUserById(userId);  
        log.debug(user.toString());
        model.addAttribute("user", user);  
        return "showUser";  
    }  
    
 // /user/showUser2?id=1
    @RequestMapping(value="/showUser2",method=RequestMethod.GET)  
    public String toIndex2(@RequestParam("id") String id,Model model){  
        int userId = Integer.parseInt(id);  
        System.out.println("userId:"+userId);
        User user = this.userService.getUserById(userId);  
        log.debug(user.toString());
        model.addAttribute("user", user);  
        return "showUser";  
    }  
    
    
    // /user/showUser3/{id}
    @RequestMapping(value="/showUser3/{id}",method=RequestMethod.GET)  
    public String toIndex3(@PathVariable("id")String id,Map<String, Object> model){  
        int userId = Integer.parseInt(id);  
        System.out.println("userId:"+userId);
        User user = this.userService.getUserById(userId);  
        log.debug(user.toString());
        model.put("user", user);  
        return "showUser";  
    }  
    
 // /user/{id}
    @RequestMapping(value="/{id}",method=RequestMethod.GET)  
    public @ResponseBody User getUserInJson(@PathVariable String id,Map<String, Object> model){  
        int userId = Integer.parseInt(id);  
        System.out.println("userId:"+userId);
        User user = this.userService.getUserById(userId);  
        log.info(user.toString());
        return user;  
    }  
    
    // /user/{id}
    @RequestMapping(value="/jsontype/{id}",method=RequestMethod.GET)  
    public ResponseEntity<User>  getUserInJson2(@PathVariable String id,Map<String, Object> model){  
        int userId = Integer.parseInt(id);  
        System.out.println("userId:"+userId);
        User user = this.userService.getUserById(userId);  
        log.info(user.toString());
        return new ResponseEntity<User>(user,HttpStatus.OK);  
    } 
    
    //文件上传、
    @RequestMapping(value="/upload")
    public String showUploadPage(){
    	return "user_admin/file";
    }
    
    @RequestMapping(value="/doUpload",method=RequestMethod.POST)
    public String doUploadFile(@RequestParam("file")MultipartFile file) throws IOException{
    	if (!file.isEmpty()) {
			log.info("Process file:{}",file.getOriginalFilename());
		}
    	FileUtils.copyInputStreamToFile(file.getInputStream(), new File("E:\\",System.currentTimeMillis()+file.getOriginalFilename()));
    	return "succes";
    }
}  