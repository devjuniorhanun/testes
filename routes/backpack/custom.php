<?php

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes

    // Casdastros
    // Cruds Referentes ao Posto
    Route::crud('postocombustivel', 'Cadastro\PostoCombustivelCrudController');
    Route::crud('postoproduto', 'Cadastro\PostoProdutoCrudController');
    Route::crud('postotransferencia', 'Cadastro\PostoTransferenciaCrudController');

    // Lancamentos
    Route::crud('lancamentocombustivel', 'Cadastro\LancamentoCombustivelCrudController');
    Route::any('lancamentocombustivel/estoque/{frotaId}/{postoId}/{produtoId}/{quantidade}/{horimetro}', 'Cadastro\LancamentoCombustivelCrudController@estoque');
    



    Route::crud('tenant', 'TenantCrudController');
    Route::crud('safra', 'SafraCrudController');
    Route::crud('cultura', 'CulturaCrudController');
    Route::crud('variedadecultura', 'VariedadeCulturaCrudController');
    Route::crud('proprietario', 'ProprietarioCrudController');    
    Route::crud('produtor', 'ProdutorCrudController');
    Route::crud('fazenda', 'FazendaCrudController');
    Route::crud('talhao', 'TalhaoCrudController');
    Route::crud('locacaotalhao', 'LocacaoTalhaoCrudController');
    Route::post('locacaotalhao/variedade', 'LocacaoTalhaoCrudController@variedade');
    Route::crud('grupoproduto', 'GrupoProdutoCrudController');
    Route::crud('subgrupoproduto', 'SubGrupoProdutoCrudController');
    Route::crud('produto', 'ProdutoCrudController');
    Route::post('produto/subgrupo', 'ProdutoCrudController@subgrupo');
    Route::crud('tipooperacaoagricula', 'TipoOperacaoAgriculaCrudController');
    Route::crud('operadoragricula', 'OperadorAgriculaCrudController');
    Route::crud('centroadministrativo', 'CentroAdministrativoCrudController');
    Route::post('centroadministrativo/fazenda', 'CentroAdministrativoCrudController@fazenda');
    Route::crud('centrocusto', 'CentroCustoCrudController');
    Route::crud('fornecedor', 'FornecedorCrudController');
    Route::crud('lancamentocontaapagar', 'LancamentoContaApagarCrudController');
    Route::crud('grupofrota', 'GrupoFrotaCrudController');
    Route::crud('frota', 'FrotaCrudController');
    Route::crud('servicoagricola', 'ServicoAgricolaCrudController');
    Route::get('servicoagricola/areaTalhao/{idTalhao}', 'ServicoAgricolaCrudController@areaTalhao');
    Route::get('servicoagricola/servico/{idServico}', 'ServicoAgricolaCrudController@servico')->name('servicos');
    Route::crud('armazem', 'ArmazemCrudController');
    Route::crud('colhedor', 'ColhedorCrudController');
    Route::crud('matrizfrete', 'MatrizFreteCrudController');
    Route::crud('motorista', 'MotoristaCrudController');
    Route::crud('lancamentosafra', 'LancamentoSafraCrudController');
    Route::any('lancamentosafra/locacao', 'LancamentoSafraCrudController@locacao');
    Route::post('lancamentosafra/{id?}/locacao', 'LancamentoSafraCrudController@locacao');
    Route::any('lancamentosafra/frete/{idLocacao}/{idArmazen}/{idMotorista}/{idColhedor}', 'LancamentoSafraCrudController@frete');
    Route::any('lancamentosafra/controles/{numControle}/{numRomaneio}', 'LancamentoSafraCrudController@controles');

    Route::get('relatorios/safra', 'LancamentoSafraCrudController@safra');
    Route::any('relatorios/safras', 'LancamentoSafraCrudController@safras')->name('relatorio_safra');;
    Route::get('relatorios/mapaProdutividade', 'LancamentoSafraCrudController@mapaProdutividade');
    Route::get('financeiro/motoristas', 'Financiero\AdiantamentoSafraController@index');
    Route::get('charts/talhao', 'Charts\TalhaoChartController@response')->name('charts.talhao.index');

    // Adiantamentos
    Route::crud('adiantamentomotorista', 'Financiero\AdiantamentoMotoristaCrudController');
    Route::post('adiantamentomotorista/motoristas', 'Financiero\AdiantamentoMotoristaCrudController@motoristas');

    Route::post('adiantamentomotorista/lote', 'LancamentoSafraCrudController@motoristas');


    Route::post('adiantamentomotorista/{id?}/motoristas', 'Financiero\AdiantamentoMotoristaCrudController@motoristas');
    Route::get('adiantamentomotorista/transportadores', 'Financiero\AdiantamentoMotoristaCrudController@transportadores');
    Route::crud('adiantamentocolhedo', 'Financiero\AdiantamentoColhedoCrudController');
    Route::post('adiantamentocolhedo/colhedores', 'Financiero\AdiantamentoColhedoCrudController@colhedores');
    Route::crud('adiantamentoarrendo', 'Financiero\AdiantamentoArrendoCrudController');

    // Relatorios
    Route::any('relatorios/motorista', 'LancamentoSafraCrudController@motorista')->name('relatorio_motorista');
    Route::get('relatorios/motoristas', 'LancamentoSafraCrudController@motoristas');
    Route::post('relatorios/adiantamento_motoristas', 'LancamentoSafraCrudController@adiantamentoMotoristas')->name('adiantamento_motoristas');
    Route::get('relatorios/colhedores', 'Relatorios\SafraController@colhedores');
    
    // Silo
    Route::crud('inscricaoestadual', 'Silo\InscricaoEstadualCrudController');
    Route::crud('entradasilo', 'Silo\EntradaSiloCrudController');    
    Route::crud('contratoembarque', 'Silo\ContratoEmbarqueCrudController');
    Route::crud('contratoinscricao', 'Silo\ContratoInscricaoCrudController');
    Route::crud('saidasilo', 'Silo\SaidaSiloCrudController');
    
}); // this should be the absolute last line of this file