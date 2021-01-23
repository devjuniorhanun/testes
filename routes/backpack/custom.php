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
    Route::crud('armazem', 'ArmazemCrudController');
    Route::crud('colhedor', 'ColhedorCrudController');
    Route::crud('matrizfrete', 'MatrizFreteCrudController');
    Route::crud('motorista', 'MotoristaCrudController');
    Route::crud('lancamentosafra', 'LancamentoSafraCrudController');
    Route::post('lancamentosafra/locacao', 'LancamentoSafraCrudController@locacao');
    Route::get('lancamentosafra/frete/{idTalhao}/{idArmazen}/{idMotorista}', 'LancamentoSafraCrudController@frete');
    Route::get('lancamentosafra/safra', 'LancamentoSafraCrudController@safra');
    Route::any('lancamentosafra/safras', 'LancamentoSafraCrudController@safras')->name('relatorio_safra');;
    Route::get('lancamentosafra/motoristas', 'LancamentoSafraCrudController@motoristas');
    Route::get('lancamentosafra/mapaProdutividade', 'LancamentoSafraCrudController@mapaProdutividade');
    Route::get('financeiro/motoristas', 'Financiero\AdiantamentoSafraController@index');
    Route::get('charts/talhao', 'Charts\TalhaoChartController@response')->name('charts.talhao.index');
    Route::crud('adiantamentomotorista', 'Financiero\AdiantamentoMotoristaCrudController');
}); // this should be the absolute last line of this file