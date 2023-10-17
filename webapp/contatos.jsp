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

 <!-- Contact Section Begin -->
<section class="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="contact-info">
                    <div class="ci-item">
                        <div class="ci-icon">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <div class="ci-text">
                            <h5>Endereço</h5>
                            <p> TV Honório José dos Santos 1414, Jurunas - Belém, PA</p>
                        </div>
                    </div>
                    <div class="ci-item">
                        <div class="ci-icon">
                            <i class="fa fa-mobile"></i>
                        </div>
                        <div class="ci-text">
                            <h5>Telefones</h5>
                            <ul>
                                <li>
                                	<a 	class="text-dark"
										target="_blank" 
										title="Clique aqui pra iniciar uma conversa"
										href="https://api.whatsapp.com/send?1=pt_BR&phone=<%=whatsappLink%>">
										<i class="fa fa-whatsapp"></i> 
										<%=whatsapp%>
									</a>
                                </li>
                                <li>
                                	<a 	class="text-dark"
										target="_blank" 
										title="Clique aqui pra iniciar uma conversa"
										href="https://api.whatsapp.com/send?1=pt_BR&phone=<%=whatsappLink%>">
										<i class="fa fa-whatsapp"></i> 
										<%=whatsapp2%>
									</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="ci-item">
                        <div class="ci-icon">
                            <i class="fa fa-headphones"></i>
                        </div>
                        <div class="ci-text">
                            <h5>Suporte</h5>
                            <p><%=email%></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cs-map">
        <iframe 
        	src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.501075022104!2d-48.48830632407306!3d-1.472334035859739!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x92a48e73a8e34111%3A0x8a76e83d34208ff6!2sTv.%20Hon%C3%B3rio%20Jos%C3%A9%20dos%20Santos%2C%201414%20-%20Jurunas%2C%20Bel%C3%A9m%20-%20PA%2C%2066033-367!5e0!3m2!1spt-BR!2sbr!4v1697516836709!5m2!1spt-BR!2sbr" 
        	width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
        </iframe>
    </div>
</section>
    <!-- Contact Section End -->

<jsp:include page="rodape.jsp"></jsp:include>