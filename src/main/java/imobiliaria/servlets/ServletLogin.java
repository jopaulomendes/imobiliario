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
		String acao = request.getParameter("acao");
		
		if (acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("sair")) {
			request.getSession().invalidate();
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);
		}
		
		System.out.println("Logout realizado com sucesso!");
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
//		String nivel = request.getParameter("nivel");
		String url = request.getParameter("url");
		
		try {
			if (email != null && !email.isEmpty() && senha != null && !senha.isEmpty()) {
				LoginModel loginModel = new LoginModel();
				loginModel.setEmail(email);
				loginModel.setSenha(senha);
//				loginModel.setNivel(nivel);
				
					if (repository.autenticacao(loginModel)) {
						request.getSession().setAttribute(email, loginModel.getEmail());
						request.getSession().setAttribute(senha, loginModel.getSenha());
//						request.getSession().setAttribute(nivel, loginModel.getNivel());
						
						if (url == null || url.equals("null")) {
							url = "index.jsp";
						}
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("painel-admin");
						dispatcher.forward(request, response);
						return;
					} else {
						RequestDispatcher dispatcher = request.getRequestDispatcher("sistema/index.jsp");
						request.setAttribute("msg", "E-mail e/ou senha incorretos");
						dispatcher.forward(request, response);
					}
				
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
				request.setAttribute("msg", "E-mail e/ou senha incorretos");
				dispatcher.forward(request, response);
			}
		} catch (ServletException | IOException | SQLException e) {
			e.printStackTrace();
			RequestDispatcher dispatcher = request.getRequestDispatcher("../erro.jsp");
			request.setAttribute("msg", e.getMessage());
			dispatcher.forward(request, response);
		}
		
	}

}
