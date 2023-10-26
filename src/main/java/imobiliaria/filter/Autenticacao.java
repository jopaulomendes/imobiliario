package imobiliaria.filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

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

import imobiliaria.util.Conexao;

@SuppressWarnings("serial")
@WebFilter(urlPatterns = {"/sistema/*"})
public class Autenticacao extends HttpFilter implements Filter {
	
	private static Connection connection;
   
    public Autenticacao() { }

	public void destroy() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		try {
			HttpServletRequest servletRequest = (HttpServletRequest) request;
			HttpSession session = servletRequest.getSession();
			
			String email = (String) session.getAttribute("email");
			String urlAutenticacao = servletRequest.getServletPath();
			
			if (email == null && !urlAutenticacao.equalsIgnoreCase("/sistema/ServletLogin")) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp?url=" + urlAutenticacao);
//			request.setAttribute("msg", "Realize o login no sistema!");
				dispatcher.forward(request, response);
				return;
			} else {
				chain.doFilter(request, response);
			}
			
			connection.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher dispatcher = request.getRequestDispatcher("../erro.jsp");
			request.setAttribute("msg", e.getMessage());
			dispatcher.forward(request, response);
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		connection = Conexao.getConnection();
	}

}
