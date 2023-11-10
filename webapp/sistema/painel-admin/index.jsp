<%@page import="imobiliaria.model.Usuario"%>

<%//variaveis para o menu
    String pag = request.getParameter("pag");
    String menu1 = "corretores";
    String menu2 = "tesoureiros";
    String menu3 = "cidade";
    
    Usuario usuario = new Usuario();
%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Jo�o Paulo Mendes">

        <title>Painel Administrativo</title>

        <!-- Custom fonts for this template-->
        <link href="../../arq-sistema/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="../../arq-sistema/css/sb-admin-2.min.css" rel="stylesheet">
        <link href="../../arq-sistema/css/style.css" rel="stylesheet">
        
        <link href=../../arq-sistema/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">


        <!-- Bootstrap core JavaScript-->
        <script src="../../arq-sistema/vendor/jquery/jquery.min.js"></script>
        <script src="../../arq-sistema/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">

                    <div class="sidebar-brand-text mx-3">Administrador</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Cadastros
                </div>



                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-users"></i>
                        <span>Pessoas</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">PESSOAS:</h6>
                            <a class="collapse-item" href="index.jsp?pag=<%=menu1%>">Corretores</a>
                             <a class="collapse-item" href="index.jsp?pag=<%=menu2%>">Tesoureiros</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-home"></i>
                        <span>Op��es Im�veis</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Dados Im�veis:</h6>
                            <a class="collapse-item" href="#">Cidade</a>
                            <a class="collapse-item" href="utilities-border.html">Bairro</a>
                            <a class="collapse-item" href="utilities-animation.html">Tipo</a>

                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Pesquisar
                </div>

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Usu�rios</span></a>
                </li>

                <!-- Nav Item - Tables -->
                <li class="nav-item">
                    <a class="nav-link" href="tables.html">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Im�veis</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                    	<%=session.getAttribute("nome")%>                                    
                                    </span>
                                    <img class="img-profile rounded-circle" src="../../arq-sistema/img/profiles/sem-foto.jpg">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="" data-toggle="modal" data-target="#ModalPerfil">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Editar Perfil
                                    </a>

                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="../logout.jsp">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Sair
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                      <% if (pag == null) { %>
                        <jsp:include page="home.jsp" />
                        <% } else if (pag.equals(menu1)) {%>
                        <jsp:include page='<%=menu1 + ".jsp"%>' />
                        <% } else if (pag.equals(menu2)) {%>
                        <jsp:include page='<%=menu2 + ".jsp"%>' />   
                        <%  } else {%>
                        <jsp:include page="home.jsp" />
                        <%  }
                        %>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!--  Modal Perfil-->
        <div class="modal fade" id="ModalPerfil" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Editar Perfil</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">�</span>
                        </button>
                    </div>

                    <form id="form-perfil" method="POST" enctype="multipart/form-data">
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label >Nome</label>
                                        <input 
                                        	type="text" 
                                        	class="form-control" 
                                        	id="nome" 
                                        	name="nome"
                                        	placeholder="Jos� Maria de Souza"
                                        	value="<%= usuario.getNome() %>" 
                                       	>
                                    </div>

                                    <div class="form-group">
                                        <label >CPF</label>
                                        <input value="" type="text" class="form-control" id="cpf" name="cpf" placeholder="999.999.999-99">
                                    </div>

                                    <div class="form-group">
                                        <label >Email</label>
                                        <input value="" type="email" class="form-control" id="email" name="email" placeholder="jose@email.com">
                                    </div>

                                    <div class="form-group">
                                        <label >Senha</label>
                                        <input value="" type="password" class="form-control" id="text" name="senha" placeholder="1234">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <div class="col-md-6 form-group">
                                        <label>Foto</label>
                                        <input value="" type="file" class="form-control-file" id="imagem" name="imagem[]" onchange="carregarImg();">

                                    </div>
                                    <div class="col-md-6 mb-2">
                                        <img src="../img/profiles/" alt="Carregue sua Imagem" id="target" width="250" height="250">
                                    </div>
                                </div>
                            </div> 

                            <small>
                                <div id="mensagem" class="mr-4">

                                </div>
                            </small>
                            
                        </div>
                        <div class="modal-footer">
                            <input value="" type="hidden" name="txtid" id="txtid">
                            <input value="" type="hidden" name="antigo" id="antigo">

                            <button type="button" id="btn-fechar" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="submit" name="btn-salvar-perfil" id="btn-salvar-perfil" class="btn btn-primary">Salvar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <!-- Core plugin JavaScript-->
        <script src="../../arq-sistema/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="../../arq-sistema/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="../../arq-sistema/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="../../arq-sistema/js/demo/chart-area-demo.js"></script>
        <script src="../../arq-sistema/js/demo/chart-pie-demo.js"></script>

        <!-- Page level plugins -->
        <script src="../../arq-sistema/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="../../arq-sistema/vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="../../arq-sistema/js/demo/datatables-demo.js"></script>

    </body>

</html>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

<!-- <script src="../../js/mascara.js"></script> -->


