<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i> {{ trans('backpack::base.dashboard') }}</a></li>

<li class="nav-item nav-dropdown">
	<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Cadastros</a>
	<ul class="nav-dropdown-items">
		<!-- Users, Roles, Permissions -->
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Autorizações</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('user') }}"><i class="nav-icon la la-user"></i> <span>Usuários</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('role') }}"><i class="nav-icon la la-id-badge"></i> <span>Perfis</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('permission') }}"><i class="nav-icon la la-key"></i> <span>Permições</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('tenant') }}"><i class="nav-icon las la-house-damage"></i> <span>Empresa</span></a></li>
			</ul>
		</li>
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Safras</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('safra') }}"><i class="nav-icon la la-question"></i> <span>Safras</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('cultura') }}"><i class="nav-icon la la-question"></i> <span>Culturas</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('variedadecultura') }}"><i class="nav-icon la la-question"></i> <span>Variedade Culturas</span></a></li>
			</ul>
		</li>
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Propriedades</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('proprietario') }}"><i class="nav-icon la la-question"></i> <span>Proprietarios</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('produtor') }}"><i class="nav-icon la la-question"></i> <span>Produtores</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('fazenda') }}"><i class="nav-icon la la-question"></i> <span>Fazendas</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('talhao') }}"><i class="nav-icon la la-question"></i> <span>Talhãos</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('locacaotalhao') }}"><i class="nav-icon la la-question"></i> <span>Locação Talhões</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('grupofrota') }}"><i class="nav-icon la la-question"></i> <span>Grupos Frotas</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('frota') }}"><i class="nav-icon la la-question"></i> <span>Frotas</span></a></li>

			</ul>
		</li>
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Agrícola</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('tipooperacaoagricula') }}"><i class="nav-icon la la-question"></i> <span>Tipo Operação</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('operadoragricula') }}"><i class="nav-icon la la-question"></i> <span>Operadores</span></a></li>
			</ul>
		</li>
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Fornecedores</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('fornecedor') }}"><i class="nav-icon la la-question"></i> <span>Fornecedores</span></a></li>
			</ul>
		</li>
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Produto</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('grupoproduto') }}"><i class="nav-icon la la-question"></i> <span>Grupo Produtos</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('subgrupoproduto') }}"><i class="nav-icon la la-question"></i> <span>Sub Grupo Produtos</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('produto') }}"><i class="nav-icon la la-question"></i> <span>Produtos</span></a></li>
			</ul>
		</li>
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Financiero</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('centroadministrativo') }}"><i class="nav-icon la la-question"></i> <span>Centro Admini.</span></a></li>
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('centrocusto') }}"><i class="nav-icon la la-question"></i> <span>Centros Custo</span></a></li>
				<li class="nav-item nav-dropdown">
					<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Lançamentos</a>
					<ul class="nav-dropdown-items">
						<li class="nav-item"><a class="nav-link" href="{{ backpack_url('lancamentocontaapagar') }}"><i class="nav-icon la la-question"></i> <span>Conta Apagar</span></a></li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
</li>
<li class="nav-item nav-dropdown">
	<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Lançamentos</a>
	<ul class="nav-dropdown-items">
		<li class="nav-item nav-dropdown">
			<a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i>Financiero</a>
			<ul class="nav-dropdown-items">
				<li class="nav-item"><a class="nav-link" href="{{ backpack_url('lancamentocontaapagar') }}"><i class="nav-icon la la-question"></i> <span>Conta Apagar</span></a></li>
			</ul>
		</li>
	</ul>
</li>
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('servicoagricola') }}'><i class='nav-icon la la-question'></i> ServicoAgricolas</a></li>