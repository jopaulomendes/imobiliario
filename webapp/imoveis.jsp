<jsp:include page="cabecalho.jsp"></jsp:include>

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
<section class="property-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h4>Imóveis recentes</h4>
				</div>
			</div>
		</div>
		<div class="row">
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
			<div class="col-lg-12">
				<div class="loadmore-btn">
					<a href="#">Load more</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Property Section End -->

<jsp:include page="rodape.jsp"></jsp:include>

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