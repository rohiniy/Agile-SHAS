package myfilter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;
 

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
public class SessionFilter implements Filter {
 
    private ArrayList<String> urlList;
     
    public void destroy() {
    }
  
    public void doFilter(ServletRequest req, ServletResponse res,
            FilterChain chain) throws IOException, ServletException {
 
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        String url = request.getServletPath();
        boolean allowedRequest = false;
         System.out.println("--"+url);
         
        if(urlList.contains(url)) {
            allowedRequest = true;
        }
             
        if (!allowedRequest) {
            HttpSession session = request.getSession(false);
            if (null == session) {
            	 response.sendRedirect(request.getServletContext().getContextPath()+"/jsp/login.jsp");
            } else
            	chain.doFilter(req, res);
        }
         if(allowedRequest){
        	 chain.doFilter(req, res);
         }
    }
 
    public void init(FilterConfig config) throws ServletException {
        String urls = config.getInitParameter("avoid-urls");
        StringTokenizer token = new StringTokenizer(urls, ",");
 
        urlList = new ArrayList<String>();
        System.out.println(config.getServletContext().getContextPath());
        while (token.hasMoreTokens()) {
            urlList.add(token.nextToken());
 
        }
    }
}