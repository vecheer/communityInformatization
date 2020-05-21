package com.vecheer.controller;


import com.vecheer.domain.User;
import com.vecheer.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/log")
/*@SessionAttributes("user")*/
public class LogController {

    @Autowired
    IUserService userService;

    //************************测试代码****************************
    @RequestMapping("/logCheck")
    public String CheckResolver(User user){
        User user1 = userService.logCheck(user.getUname(),user.getUpassword());
        if (user1==null)
            return "wrong";
        return "success";
    }

    @RequestMapping("/register4Test")
    public String RegisterResolver(User user,String agreement){
        user.setUrole('0');
        userService.saveUser(user);
        return "success";
    }
    //************************测试代码******************************



    //这里的注册仅仅时起到一个跳转的功能，并没有入库的操作，入库操作在下面的AJAX验证信息的注册
    @RequestMapping("/register")
    public String RegisterResolver(){
        return "WEB-INF/pages/register";
    }


    //用户登出
    @RequestMapping("/logout")
    public String logOut(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/index.jsp";
    }


    //用户登录，ajax技术动态验证
    @RequestMapping(value = "/logCheckAJAXTest" ,produces = "application/json;charset=utf-8")
    @ResponseBody
    public User logCheckAJAX(@RequestBody User userQC, HttpSession session){
        System.out.println("正在解析json:"+userQC);
        User user = userService.logCheck(userQC.getUname(), userQC.getUpassword());
        if(user!=null){
            System.out.println("查询到，用户名密码都正确");
            /*model.addAttribute("user",user); //登录成功之后，把用户信息放在session中*/
            session.setAttribute("user",user);
        }else{
            System.out.println("用户名或密码错误");
            user = userQC;
            user.setUname("wrong_log_msg");
        }

        return user;
    }

    //用户注册，ajax动态验证用户名信息可用性,可用则直接入库
    //FIXME 这里并没有考虑注册信息的可用性，用户名长度，密码组成，这里都没验证。也没有验证手机号可用性
    @RequestMapping(value = "/registerCheck")
    @ResponseBody
    public String registerCheck(@RequestBody User user,HttpSession session){
        System.out.println("正在验证用户名的可用性:"+user.getUname());
        if (userService.isNameAvailable(user.getUname())){
            if (user.getUpassword()!="" && user.getUpassword()!=null){//用户名密码都合法
                userService.saveUser(user);
                //注册成功之后直接登录（将信息塞进session中）
                session.setAttribute("user",user);
                return  "{\"msg\":\"success\"}";
            }
            //密码不合法
            return "{\"msg\":\"bad_pwd\"}";
        }
        //用户名重复
        return "{\"msg\":\"bad_uname\"}";
    }

}
