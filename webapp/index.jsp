<jsp:include page="cabecalho.jsp"></jsp:include>

<!-- Carrossel -->
<section class="hero-section">
	<div class="container">
		<div class="hs-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/hero/hero-1.jpg">
				<div class="row">
					<div class="col-lg-12">
						<div class="hc-inner-text">
							<div class="hc-text">
								<h4>Vende-se casa no Jurunas</h4>
								<p title="Local do imóvel">
									<span class="icon_pin_alt"></span> Travessa Honório J. dos
									Santos
								</p>
								<div class="label">Comprar</div>
								<h5>
									R$ 300.000<span>/à vista</span>
								</h5>
							</div>
							<div class="hc-widget">
								<ul>
									<li title="Metros quadrados"><i class="fa fa-object-group"></i>
										380m²</li>
									<li title="Banheiros"><i class="fa fa-bathtub"></i> 05</li>
									<li title="Quartos"><i class="fa fa-bed"></i> 05</li>
									<li title="Vagas na garagem"><i class="fa fa-automobile"></i>
										01</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/hero/hero-2.jpg">
				<div class="row">
					<div class="col-lg-12">
						<div class="hc-inner-text">
							<div class="hc-text">
								<h4>Casa de esquina na Marambaia</h4>
								<p title="Local do imóvel">
									<span class="icon_pin_alt"></span> Rua Primeiro de Agosto -
									Marambaia - Belém, PA
								</p>
								<div class="label">Comprar</div>
								<h5>
									R$ 270.000 <span>/à vista/financiado</span>
								</h5>
							</div>
							<div class="hc-widget">
								<ul>
									<li title="Metros quadrados"><i class="fa fa-object-group"></i>
										380m²</li>
									<li title="Banheiros"><i class="fa fa-bathtub"></i> 03</li>
									<li title="Quartos"><i class="fa fa-bed"></i> 4</li>
									<li title="Vagas na garagem"><i class="fa fa-automobile"></i>
										01</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/hero/hero-3.jpg">
				<div class="row">
					<div class="col-lg-12">
						<div class="hc-inner-text">
							<div class="hc-text">
								<h4>VENDO EXCELENTE CASA COM PISCINA E CHURRASQUEIRA</h4>
								<p title="Local do imóvel">
									<span class="icon_pin_alt"></span> Rua dos Caripunas - até
									588/589 - Jurunas - Belém, PA
								</p>
								<div class="label">Comprar</div>
								<h5>
									R$ 450.000<span> /à vista</span>
								</h5>
							</div>
							<div class="hc-widget">
								<ul>
									<li title="Metros quadrados"><i class="fa fa-object-group"></i>180m²</li>
									<li title="Banheiros"><i class="fa fa-bathtub"></i> 05</li>
									<li title="Quartos"><i class="fa fa-bed"></i> 03</li>
									<li title="Vagas na garagem"><i class="fa fa-automobile"></i>02</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Carrossel End -->

<!-- Filtro por imóvel -->
<section class="search-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-7">
				<div class="section-title">
					<h4>Qual imóvel você esta procurando?</h4>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="change-btn">
					<div class="cb-item">
						<label for="cb-rent" class="active"> Comprar <input
							type="radio" id="cb-rent">
						</label>
					</div>
					<div class="cb-item">
						<label for="cb-sale"> Alugar <input type="radio"
							id="cb-sale">
						</label>
					</div>
				</div>
			</div>
		</div>
		<div class="search-form-content">
			<form action="#" class="filter-form">
				<select class="sm-width">
					<option value="">Cidade</option>
				</select> <select class="sm-width">
					<option value="">Bairro</option>
				</select> <select class="sm-width">
					<option value="">Imóvel status</option>
					<option value="Novo">Novo</option>
					<option value="Usado">Usado</option>
					<option value="Planta">Planta</option>
				</select> <select class="sm-width">
					<option value="">Tipo de imóvel</option>
				</select> <select class="sm-width">
					<option value="">Número de quartos</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">Mais de 5</option>
				</select> <select class="sm-width">
					<option value="">Vagas de garagem</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">Mais de 5</option>
				</select>
				<div class="room-size-range-wrap sm-width">
					<div class="price-text">
						<label for="roomsizeRange">Tamanho m²:</label> 
						<input type="text" id="roomsizeRange" readonly>
					</div>
					<div id="roomsize-range" class="slider"></div>
				</div>
				<div id="priceCompra" class="price-range-wrap sm-width">
					<div class="price-text">
						<label for="priceRange">Preço:</label> 
						<input type="text" id="priceRange" readonly>
					</div>
					<div id="price-range" class="slider"></div>
				</div>
				<div id="priceAluguel" class="price-range-wrap sm-width">
					<div class="price-text">
						<label for="priceRange">Preço:</label> 
						<input type="text" id="priceRangeAluguel" readonly>
					</div>
					<div id="price-range-aluguel" class="slider"></div>
				</div>
				<button type="button" class="search-btn sm-width">Pesquisar</button>
			</form>
		</div>
<!-- 		<div class="more-option"> -->
<!-- 			<div class="accordion" id="accordionExample"> -->
<!-- 				<div class="card"> -->
<!-- 					<div class="card-heading active"> -->
<!-- 						<a data-toggle="collapse" data-target="#collapseOne">  -->
<!-- 							Mais opções de pesquisa  -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div id="collapseOne" class="collapse" -->
<!-- 						data-parent="#accordionExample"> -->
<!-- 						<div class="card-body"> -->
<!-- 							<div class="mo-list"> -->
<!-- 								<div class="ml-column"> -->
<!-- 									<label for="air">Air conditioning <input -->
<!-- 										type="checkbox" id="air"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="lundry">Laundry <input type="checkbox" -->
<!-- 										id="lundry"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="refrigerator">Refrigerator <input -->
<!-- 										type="checkbox" id="refrigerator"> <span -->
<!-- 										class="checkbox"></span> -->
<!-- 									</label> <label for="washer">Washer <input type="checkbox" -->
<!-- 										id="washer"> <span class="checkbox"></span> -->
<!-- 									</label> -->
<!-- 								</div> -->
<!-- 								<div class="ml-column"> -->
<!-- 									<label for="barbeque">Barbeque <input type="checkbox" -->
<!-- 										id="barbeque"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="lawn">Lawn <input type="checkbox" -->
<!-- 										id="lawn"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="sauna">Sauna <input type="checkbox" -->
<!-- 										id="sauna"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="wifi">Wifi <input type="checkbox" -->
<!-- 										id="wifi"> <span class="checkbox"></span> -->
<!-- 									</label> -->
<!-- 								</div> -->
<!-- 								<div class="ml-column"> -->
<!-- 									<label for="dryer">Dryer <input type="checkbox" -->
<!-- 										id="dryer"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="microwave">Microwave <input -->
<!-- 										type="checkbox" id="microwave"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="pool">Swimming Pool <input type="checkbox" -->
<!-- 										id="pool"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="window">Window Coverings <input -->
<!-- 										type="checkbox" id="window"> <span class="checkbox"></span> -->
<!-- 									</label> -->
<!-- 								</div> -->
<!-- 								<div class="ml-column last-column"> -->
<!-- 									<label for="gym">Gym <input type="checkbox" id="gym"> -->
<!-- 										<span class="checkbox"></span> -->
<!-- 									</label> <label for="shower">OutdoorShower <input -->
<!-- 										type="checkbox" id="shower"> <span class="checkbox"></span> -->
<!-- 									</label> <label for="tv">Tv Cable <input type="checkbox" -->
<!-- 										id="tv"> <span class="checkbox"></span> -->
<!-- 									</label> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
</section>
<!-- Search Section End -->

<!-- Property Section Begin -->
<section class="property-section latest-property-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-5">
				<div class="section-title">
					<h4>ÚLTIMOS IMÓVEIS</h4>
				</div>
			</div>
			<div class="col-lg-7">
				<div class="property-controls">
					<ul>
						<li id="listarTodos" data-filter="all">Todos</li>
						<li data-filter="Apartamentos">Apartamentos</li>
						<li data-filter="Casas">Casas</li>
						<li data-filter="Escritorios">Escritórios</li>
						<li data-filter="Lotes">Lotes</li>
						<li data-filter="Sitios">Sítios</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- início dos cards com os  imóveis-->
		<div class="row property-filter">
			<div class="col-lg-4 col-md-6 mix all house">
				<div class="property-item">
					<div class="pi-pic set-bg" data-setbg="img/property/property-1.jpg">
						<div class="label">Alugar</div>
					</div>
					<div class="pi-text">
						<a title="Enviar mensagem" href="" data-toggle="modal" data-target="#modalMensagemImovel" class="heart-icon"><span class="icon_heart_alt"></span></a>
						<div class="pt-price">
							R$ 700,00<span>/mês</span>
						</div>
						<h5>
							<a href="#">Kitnet na Pedreira</a>
						</h5>
						<p>
							<span class="icon_pin_alt"></span> Passagem E - Pedreira - Belém, PA
						</p>
						<ul>
							<li title="Área útil"><i class="fa fa-object-group"></i> 160m²</li>
							<li title="Banheiros"><i class="fa fa-bathtub"></i> 03</li>
						    <li title="Quartos"><i class="fa fa-bed"></i> 05</li>
							<li title="Vagas"><i class="fa fa-automobile"></i> 00</li>
						</ul>
						<div class="pi-agent">
							<div class="pa-item">
								<div class="pa-info">
									<img src="img/property/posted-by/pb-1.jpg" alt="">
									<h6>Nome do corretor</h6>
								</div>
								<div class="pa-text">
									<a class="cor-verde-template-link"
									   target="_blank" 
									   title="Clique aqui pra iniciar uma conversa"
									   href="https://api.whatsapp.com/send?1=pt_BR&phone=559100000000">
									   <i class="fa fa-whatsapp"></i>
									   (91) 00000-0000
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mix all restaurent hotel">
				<div class="property-item">
					<div class="pi-pic set-bg" data-setbg="img/property/property-2.jpg">
						<div class="label c-red">Comprar</div>
					</div>
					<div class="pi-text">
						<a title="Enviar mensagem" href="" data-toggle="modal" data-target="#modalMensagemImovel" class="heart-icon"><span class="icon_heart_alt"></span></a>
						<div class="pt-price">R$ 300.000</div>
						<h5>
							<a href="#">Casa de 2 pavimentos disponível para venda</a>
						</h5>
						<p>
							<span class="icon_pin_alt"></span> Passagem Alegre - nº 66, entre Marquês de Herval e Dr. Freitas - Pedreira
						</p>
						<ul>
							<li title="Área útil"><i class="fa fa-object-group"></i> 160m²</li>
							<li title="Banheiros"><i class="fa fa-bathtub"></i> 03</li>
						    <li title="Quartos"><i class="fa fa-bed"></i> 05</li>
							<li title="Vagas"><i class="fa fa-automobile"></i> 00</li>
						</ul>
						<div class="pi-agent">
							<div class="pa-item">
								<div class="pa-info">
									<img src="img/property/posted-by/pb-1.jpg" alt="">
									<h6>Nome do corretor</h6>
								</div>
								<div class="pa-text">
									<a class="cor-verde-template-link"
									   target="_blank" 
									   title="Clique aqui pra iniciar uma conversa"
									   href="https://api.whatsapp.com/send?1=pt_BR&phone=559100000000">
									   <i class="fa fa-whatsapp"></i>
									   (91) 00000-0000
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- fim dos cards com os  imóveis-->
	</div>
</section>
<!-- Property Section End -->

<!-- Chooseus Section Begin -->
<section class="chooseus-section spad set-bg"
	data-setbg="img/chooseus/chooseus-bg.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="chooseus-text">
					<div class="section-title">
						<h4>Invista no seu futuro</h4>
					</div>
					<p>Lorem Ipsum has been the industryâ€™s standard dummy text
						ever since the 1500s, when an unknown printer took a galley of
						type and scrambled it to make a type specimen book.</p>
				</div>
				<div class="chooseus-features">
					<div class="cf-item">
						<div class="cf-pic">
							<img src="img/chooseus/chooseus-icon-1.png" alt="">
						</div>
						<div class="cf-text">
							<h5>Os melhores imóveis</h5>
							<p>We help you find a new home by offering a smart real
								estate.</p>
						</div>
					</div>
					<div class="cf-item">
						<div class="cf-pic">
							<img src="img/chooseus/chooseus-icon-2.png" alt="">
						</div>
						<div class="cf-text">
							<h5>Corretores especializados</h5>
							<p>Millions of houses and apartments in your favourite cities</p>
						</div>
					</div>
					<div class="cf-item">
						<div class="cf-pic">
							<img src="img/chooseus/chooseus-icon-3.png" alt="">
						</div>
						<div class="cf-text">
							<h5>Sua compra facilitada</h5>
							<p>Find an agent who knows your market best</p>
						</div>
					</div>
					<div class="cf-item">
						<div class="cf-pic">
							<img src="img/chooseus/chooseus-icon-4.png" alt="">
						</div>
						<div class="cf-text">
							<h5>Melhores localizaçãoes</h5>
							<p>Sign up now and sell or rent your own properties</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Chooseus Section End -->

<!-- Feature Property Section Begin -->
<section class="feature-property-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 p-0">
				<div class="feature-property-left">
					<div class="section-title">
						<h4>Recurso PROPRIEDADE</h4>
					</div>
					<ul>
						<li>Apartamento</li>
						<li>Cobertura</li>
						<li>Casa</li>
						<li>Imóvel Comercial</li>
						<li>Escritório</li>
					</ul>
					<a href="imoveis.jsp">Ver todos os imóveis</a>
				</div>
			</div>
			<div class="col-lg-8 p-0">
				<div class="fp-slider owl-carousel">
<!-- 					início do carrosel -->
					<div class="fp-item set-bg"
						data-setbg="img/feature-property/fp-1.jpg">
						<div class="fp-text">
							<h5 class="title">Casa, 160m², 3 quartos sendo 2 suítes</h5>
							<p>
								<span class="icon_pin_alt"></span> 
								Pssagem Alegre - nº 66, entre Marquês de Herval e Dr. Freitas - Pedreira
							</p>
							<div class="label">Comprar</div>
							<h5>
								R$ 300,00<span>/total</span>
							</h5>
							<ul>
								<li title="Área útil"><i class="fa fa-object-group"></i> 160m²</li>
							<li title="Banheiros"><i class="fa fa-bathtub"></i> 03</li>
						    <li title="Quartos"><i class="fa fa-bed"></i> 05</li>
							<li title="Vagas"><i class="fa fa-automobile"></i> 00</li>
							</ul>
						</div>
					</div>
					<div class="fp-item set-bg"
						data-setbg="img/feature-property/fp-2.jpg">
						<div class="fp-text">
							<h5 class="title">CASA A VENDA NA PEDREIRA BEM LOCALIZADA</h5>
							<p>
								<span class="icon_pin_alt"></span> 
								Pedreira na tv angustura 
							</p>
							<div class="label">Comprar</div>
							<h5>
								R$ 300,00<span>/total</span>
							</h5>
							<ul>
								<li title="Área útil"><i class="fa fa-object-group"></i> 160m²</li>
								<li title="Banheiros"><i class="fa fa-bathtub"></i> 03</li>
							    <li title="Quartos"><i class="fa fa-bed"></i> 05</li>
								<li title="Vagas"><i class="fa fa-automobile"></i> 00</li>
							</ul>
						</div>
					</div>
					<div class="fp-item set-bg"
						data-setbg="img/feature-property/fp-1.jpg">
						<div class="fp-text">
							<h5 class="title">Casa para venda com 100 metros quadrados </h5>
							<p>
								<span class="icon_pin_alt"></span>
								Avenida Pedro Miranda - até 484/485
							</p>
							<div class="label">Comprar</div>
							<h5>
								R$ 300,00<span>/total</span>
							</h5>
							<ul>
								<li title="Área útil"><i class="fa fa-object-group"></i> 160m²</li>
								<li title="Banheiros"><i class="fa fa-bathtub"></i> 03</li>
							    <li title="Quartos"><i class="fa fa-bed"></i> 05</li>
								<li title="Vagas"><i class="fa fa-automobile"></i> 00</li>
							</ul>
						</div>
					</div>
					<div class="fp-item set-bg"
						data-setbg="img/feature-property/fp-1.jpg">
						<div class="fp-text">
							<h5 class="title">Casa de esquina na Marambaia </h5>
							<p>
								<span class="icon_pin_alt"></span>
								Rua Primeiro de Agosto
							</p>
							<div class="label">Comprar</div>
							<h5>
								R$ 300,00<span>/total</span>
							</h5>
							<ul>
								<li title="Área útil"><i class="fa fa-object-group"></i> 160m²</li>
							<li title="Banheiros"><i class="fa fa-bathtub"></i> 03</li>
							    <li title="Quartos"><i class="fa fa-bed"></i> 05</li>
								<li title="Vagas"><i class="fa fa-automobile"></i> 00</li>
							</ul>
						</div>
					</div>
<!-- 					Final do carrosel -->
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Feature Property Section End -->

<!-- Team Section Begin -->
<section class="team-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8">
				<div class="section-title">
					<h4>Nosso time</h4>
				</div>
			</div>
			<div class="col-lg-4 col-md-4">
				<div class="team-btn">
					<a href="#"><i class="fa fa-user"></i> Corretores destaques</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="ts-item">
					<div class="ts-text">
						<img src="img/team/team-1.jpg" alt="">
						<h5>Juca Bala</h5>
						<span>
							<a class="text-white"
							   target="_blank" 
							   title="Clique aqui pra iniciar uma conversa"
							   href="https://api.whatsapp.com/send?1=pt_BR&phone=559100000000">
							   <i class="fa fa-whatsapp"></i>
							   (91) 00000-0000
							</a>
						</span>
						<p>Ipsum dolor amet, consectetur adipiscing elit, eiusmod
							tempor incididunt lorem.</p>
						<div class="ts-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-envelope-o"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="ts-item">
					<div class="ts-text">
						<img src="img/team/team-2.jpg" alt="">
						<h5>Pedro de Lara</h5>
						<span>
							<a class="text-white"
							   target="_blank" 
							   title="Clique aqui pra iniciar uma conversa"
							   href="https://api.whatsapp.com/send?1=pt_BR&phone=559100000000">
							   <i class="fa fa-whatsapp"></i>
							   (91) 00000-0000
							</a>
						</span>
						<p>Ipsum dolor amet, consectetur adipiscing elit, eiusmod
							tempor incididunt lorem.</p>
						<div class="ts-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-envelope-o"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="ts-item">
					<div class="ts-text">
						<img src="img/team/team-3.jpg" alt="">
						<h5>Nelsinho Rodrigues</h5>
						<span>
							<a class="text-white"
							   target="_blank" 
							   title="Clique aqui pra iniciar uma conversa"
							   href="https://api.whatsapp.com/send?1=pt_BR&phone=559100000000">
							   <i class="fa fa-whatsapp"></i>
							   (91) 00000-0000
							</a>
						</span>
						<p>Ipsum dolor amet, consectetur adipiscing elit, eiusmod
							tempor incididunt lorem.</p>
						<div class="ts-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-envelope-o"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Team Section End -->

<!-- Categories Section Begin -->
<section class="categories-section">
	<div class="cs-item-list">
		<div class="cs-item set-bg" data-setbg="img/categories/cat-1.jpg">
			<div class="cs-text">
				<h5>Apartamento</h5>
				<span>230 imóveis</span>
			</div>
		</div>
		<div class="cs-item set-bg" data-setbg="img/categories/cat-2.jpg">
			<div class="cs-text">
				<h5>Cobertura</h5>
				<span>230 imóveis</span>
			</div>
		</div>
		<div class="cs-item set-bg" data-setbg="img/categories/cat-3.jpg">
			<div class="cs-text">
				<h5>Casa</h5>
				<span>230 imóveis</span>
			</div>
		</div>
		<div class="cs-item set-bg" data-setbg="img/categories/cat-4.jpg">
			<div class="cs-text">
				<h5>Comercial</h5>
				<span>230 imóveis</span>
			</div>
		</div>
		<div class="cs-item set-bg" data-setbg="img/categories/cat-5.jpg">
			<div class="cs-text">
				<h5>Escritório</h5>
				<span>230 imóveis</span>
			</div>
		</div>
	</div>
</section>
<!-- Categories Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h4>Alguns de nossos clientes</h4>
				</div>
			</div>
		</div>
		<div class="row testimonial-slider owl-carousel">
			<div class="col-lg-6">
				<div class="testimonial-item">
					<div class="ti-text">
						<p>Lorem ipsum dolor amet, consectetur adipiscing elit,
							seiusmod tempor incididunt ut labore magna aliqua. Quis ipsum
							suspendisse ultrices gravida accumsan lacus vel facilisis.</p>
					</div>
					<div class="ti-author">
						<div class="ta-pic">
							<img src="img/testimonial-author/ta-1.jpg" alt="">
						</div>
						<div class="ta-text">
							<h5>Arise Naieh</h5>
							<span>Designer</span>
							<div class="ta-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="testimonial-item">
					<div class="ti-text">
						<p>Lorem ipsum dolor amet, consectetur adipiscing elit,
							seiusmod tempor incididunt ut labore magna aliqua. Quis ipsum
							suspendisse ultrices gravida accumsan lacus vel facilisis.</p>
					</div>
					<div class="ti-author">
						<div class="ta-pic">
							<img src="img/testimonial-author/ta-2.jpg" alt="">
						</div>
						<div class="ta-text">
							<h5>Arise Naieh</h5>
							<span>Designer</span>
							<div class="ta-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="testimonial-item">
					<div class="ti-text">
						<p>Lorem ipsum dolor amet, consectetur adipiscing elit,
							seiusmod tempor incididunt ut labore magna aliqua. Quis ipsum
							suspendisse ultrices gravida accumsan lacus vel facilisis.</p>
					</div>
					<div class="ti-author">
						<div class="ta-pic">
							<img src="img/testimonial-author/ta-1.jpg" alt="">
						</div>
						<div class="ta-text">
							<h5>Arise Naieh</h5>
							<span>Designer</span>
							<div class="ta-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Testimonial Section End -->

<!-- Contact Section Begin -->

<jsp:include page="rodape.jsp"></jsp:include>

<!-- Modal Mensagem Imóvel -->
<div class="modal fade" data-backdrop="static" id="modalMensagemImovel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enviar Mensagem</h5>
        <button id="btn-cancelar-dismiss" type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
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

<!-- Script para mostrar div do slider de aluguel ou compra -->
<script type="text/javascript">
	$(document).ready(function () {
		$('#priceCompra').show();
		$('#priceAluguel').hide();
		
		$('#cb-rent').click(function (event) {
			$('#priceCompra').show();
			$('#priceAluguel').hide();
		})
		
		$('#cb-sale').click(function (event) {
			$('#priceCompra').hide();
			$('#priceAluguel').show();
		})
	})
</script>

<!-- Listar todos os imóveis após abrirt modal -->
<script type="text/javascript">
	$('#btn-cancelar-dismiss').click(function (event) {
		$('#listarTodos').click();
	})
	$('#btn-enviar').click(function (event) {
		$('#listarTodos').click();
	})
	
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

<script src="js/mascara.js"></script>

