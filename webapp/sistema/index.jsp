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
        <h3 class="text-center text-white pt-5">Imobili�ria Jopaulo</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
<!--                     	<div class="alert alert-danger" role="alert"> -->
<%--                         	<h2>${msg}</h2> --%>
<!--                         </div> -->
						<h2>${msg}</h2>
                        <form id="login-form" class="form needs-validation" action="ServletLogin" method="post" novalidate>
                        	<input type="hidden" value="<%= request.getParameter("url") %>" name="url">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">E-mail:</label><br>
                                <input type="email" name="email" class="form-control" required>
                                <div id="validationServerUsernameFeedback" class="invalid-feedback">
							       E-mail obrigat�rio.
							     </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Senha:</label><br>
                                <input type="password" name="senha" class="form-control" required>
                                 <div id="validationServerUsernameFeedback" class="invalid-feedback">
							        Senha obrigat�ria.
							      </div>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Lembrar</span>�<span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Entrar">
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Recuperar senha</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
	    (function () {
	      'use strict'
	
	      var forms = document.querySelectorAll('.needs-validation')
	
	      Array.prototype.slice.call(forms)
	        .forEach(function (form) {
	          form.addEventListener('submit', function (event) {
	            if (!form.checkValidity()) {
	              event.preventDefault()
	              event.stopPropagation()
	            }
	
	            form.classList.add('was-validated')
	          }, false)
	        })
	    })()
    </script>
</body>



