package imobiliaria.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebFilter(urlPatterns = {"/sistema/*"})
public class Autenticacao extends HttpFilter implements Filter {
   
    public Autenticacao() { }

	public void destroy() { }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpSession session = servletRequest.getSession();
		
		String email = (String) session.getAttribute("email");
		String urlAutenticacao = servletRequest.getServletPath();
		
		if (email == null && !urlAutenticacao.equalsIgnoreCase("/sistema/ServletLogin")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?url=" + urlAutenticacao);
//			request.setAttribute("msg", "Realize o login no sistema!");
			dispatcher.forward(request, response);
			return;
		}
		
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException { }

}
