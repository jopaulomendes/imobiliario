package imobiliaria.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imobiliaria.dao.LoginRepository;
import imobiliaria.model.LoginModel;

@WebServlet(urlPatterns = {"/sistema/ServletLogin", "/sistema"})
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private LoginRepository repository = new LoginRepository();
       
    public ServletLogin() {
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String url = request.getParameter("url");
		
		try {
			if (email != null && !email.isEmpty() && senha != null && !senha.isEmpty()) {
				LoginModel loginModel = new LoginModel();
				loginModel.setEmail(email);
				loginModel.setSenha(senha);
				
					if (repository.autenticacao(loginModel)) {
						request.getSession().setAttribute(email, loginModel.getEmail());
						request.getSession().setAttribute(senha, loginModel.getSenha());
						
						if (url == null || url.equals("null")) {
							url = "index.jsp";
						}
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("../tela-principal.jsp");
						dispatcher.forward(request, response);
					} else {
						RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
						request.setAttribute("msg", "E-mail e/ou senha incorretos");
						dispatcher.forward(request, response);
						return;
					}
				
				
			} else {
		        RequestDispatcher dispatcher = request.getRequestDispatcher(request.getServletPath());
		        dispatcher.forward(request, response);
				request.setAttribute("msg", "Dados incorretos");
			}
		} catch (SQLException | ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
