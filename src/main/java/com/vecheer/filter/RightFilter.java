package com.vecheer.filter;
import com.vecheer.domain.User;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RightFilter extends HttpServlet implements Filter {

    public void doFilter(ServletRequest arg0, ServletResponse arg1,
                         FilterChain arg2) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) arg1;
        HttpServletRequest request=(HttpServletRequest)arg0;
        HttpSession session = request.getSession(true);
        User user = (User)session.getAttribute("user");
        String url=request.getRequestURI();
        if(user==null) //判断是否已经登录
        {
            //判断获取的路径不为空,且不是访问主界面或者注册界面
            if(url!=null && !url.equals("") &&  url.indexOf("index")<0 && url.indexOf("register")<0 )
            {
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return ;
            }

            //FIXME 这里应当再加一个权限的判断，普通用户（角色0）只能访问_query，管理员和办公人员可以访问_save、_delete、_update

        }
        //已通过验证，用户访问继续
        arg2.doFilter(arg0, arg1);
        return;
    }
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
    }
}