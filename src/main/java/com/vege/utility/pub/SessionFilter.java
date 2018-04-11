package com.vege.utility.pub;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by online on 17-4-11.
 */
public class SessionFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("username");
        String uri = request.getRequestURI();
        //非校验页面，首页、登录注册页面、导航栏中的功能页面。
        if (uri.indexOf("index.jsp") == -1&&uri.indexOf("mainpage.jsp") == -1&&uri.indexOf("teamtravelist.jsp") == -1&&uri.indexOf("login.jsp") == -1&&uri.indexOf("register.jsp") == -1&&uri.length()!=1) {
            if ((userName == null || userName.equals(""))) {
                response.sendRedirect("/index.jsp");
                return;
            }
        }
        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
