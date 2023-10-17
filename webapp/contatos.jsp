<jsp:include page="cabecalho.jsp"></jsp:include>
<%@ include file="config.jsp"%>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section spad set-bg" data-setbg="img/breadcrumb-contact-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <h4>Contate-nos</h4>
                    <div class="bt-option">
                        <a href="./index.jsp"><i class="fa fa-home"></i> Home</a>
                        <span>Contatos</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Contact Form Section Begin -->
<section class="contact-form-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cf-content">
                    <div class="cc-title">
                        <h4>Formulário de Contato</h4>
                        <p>
                        	Preencha os campos abaixo para entrar em contato conosco, iremos entrar em contato o mais breve possível.<br>
                        	Se preferir, pode entrar em contato através do nosso WhatsApp 
                        	<a	class="text-dark"
								target="_blank" 
								title="Clique aqui pra iniciar uma conversa"
								href="https://api.whatsapp.com/send?1=pt_BR&phone=<%=whatsappLink%>">
								<i class="fa fa-whatsapp"></i>
								<%=whatsapp%>
							</a>
                        </p>
                    </div>
                    <form action="#" class="cc-form">
                        <div class="group-input">
			                <input type="text" placeholder="Nome">
			                <input type="email" placeholder="Email">
			                <input id="telefone" type="text" placeholder="Telefone">
			            </div>
			            <textarea placeholder="Comentário"></textarea>
			            <div align="right">
				            <button id="btn-enviar" type="submit" class="site-btn">Enviar</button>
			            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Form Section End -->

<jsp:include page="rodape.jsp"></jsp:include>