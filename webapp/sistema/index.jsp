<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="imobiliaria.util.*"%> 

<%
	Statement st = null;
    ResultSet rs = null;
%>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="../css/login.css" type="text/css">

<!-- Faviicon -->
<!-- <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon"> -->
<!-- <link rel="icon" href="../img/favicon.ico" type="image/x-icon"> -->

<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Imobiliária Jopaulo</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">E-mail:</label><br>
                                <input type="email" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Senha:</label><br>
                                <input type="password" name="senha" id="senha" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Lembrar</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Entrar">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Recuperar senha</a>
                            </div>
                            
                            <p align="center" class="texto-alerta mt-2">
                            	<% 
                            		String email = request.getParameter("email");
                            		String senha = request.getParameter("senha");
                                	String nome = "";
                                	String cpf = "";
                                	
                                	String user = "", pass = "";
                                	int i = 0;
                                	
                                	try {
                                        st = new Conexao().conectar().createStatement();
                                        rs = st.executeQuery("SELECT * FROM usuarios where email = '" + email + "' and senha = '" + senha + "'");
                                        while (rs.next()) {
                                            user = rs.getString(4);
                                            pass = rs.getString(5);
                                            nome = rs.getString(2);
                                            cpf = rs.getString(3);
                                            rs.last();
                                            i = rs.getRow();
                                        }
                                    } catch (Exception e) {
                                        out.print(e);
                                    }
                                	
                                	if (email == null || senha == null) {
                                        out.println("Preencha os Dados");

                                    } else {
                                    	if (i > 0) {
                                    		session.setAttribute("nome", nome);
                                    		session.setAttribute("cpf", cpf);
                                    		response.sendRedirect("../index.jsp");
                                    	} else {
                                    		out.println("Dados incorretos");
                                    	}
                                    }
                            	%>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>



