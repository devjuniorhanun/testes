<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\LancamentoSafraRequest;
use App\Models\Armazem;
use App\Models\LancamentoSafra;
use App\Models\LocacaoTalhao;
use App\Models\MatrizFrete;
use App\Models\Motorista;
use App\Models\Talhao;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class LancamentoSafraCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class LancamentoSafraCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\LancamentoSafra::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/lancamentosafra');
        CRUD::setEntityNameStrings('Lançamento Safra', 'Lançamentos Safras');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->enableExportButtons();
        $this->crud->enableResponsiveTable();
        CRUD::column('como_vai')->type('select')
            ->entity('motorista')
            ->with('motoristaFornecedor')
            ->model('App\Models\Fornecedor')
            ->attribute('motoristaFornecedor_razao_social');
        CRUD::column('data_colhido')->type('datetime')->format('DD/MM/YYYY');
        //CRUD::column('motorista_fornecedor_id');
        //CRUD::column('motorista_id');
        CRUD::column('motorista_id')->type('select')
            ->entity('motorista')
            ->with('fornecedor')
            //->model('App\Models\Fornecedor')
            ->attribute('placa_nome');

        CRUD::column('talhao_id')->type('select')
            ->entity('Talhao')
            ->attribute('nome');
        CRUD::column('num_controle')->label('Nº Controler');
        CRUD::column('num_romaneio')->label('Nº Romaneio');
        CRUD::column('peso_bruto')->label('Peso Bruto (Kg)');
        CRUD::column('peso_desconto')->label('Desconto (Kg)');
        CRUD::column('peso_liquido')->label('Peso Liquido (Kg)');
        CRUD::column('armazem_id')->type('select')
            ->entity('Armazem')
            ->attribute('nome');
        CRUD::column('colhedor_id')->type('select')
            ->entity('Colhedor')
            ->attribute('nome');
        CRUD::column('desconto')->label('Desconto (%)');
        CRUD::column('fazenda_id')->type('select')
            ->entity('Fazenda')
            ->attribute('nome');
        //CRUD::column('locacao_talhao_id');
        //CRUD::column('matriz_frete_id');
        CRUD::column('proprietario_id')->type('select')
            ->entity('Proprietario')
            ->attribute('nome_fantasia');
        CRUD::column('saco_bruto');
        CRUD::column('saco_liquido');
        CRUD::column('safra_id');
        CRUD::column('valor_frete');




        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']); 
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(LancamentoSafraRequest::class);
        CRUD::field('data_colhido')->size(3)->label('Data.:');
        CRUD::field('safra_id')
            ->label('Safra.:')
            ->type('select2')
            ->attribute('nome')
            ->model('App\Models\Safra')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);
        CRUD::field('motorista_id')
            ->attributes(['id' => 'motorista_id'])
            ->label('Trasportador.:')
            ->type('select2')
            //->entity('centroCusto')
            ->attribute('placa_nome')
            ->model('App\Models\Motorista')
            ->options(function ($query) {
                return $query->where('status', '=', 'ATIVO')->orderBy('placa_nome', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('proprietario_id')
            ->label('Proprietário.:')
            ->type('select2')
            ->attribute('nome_fantasia')
            ->model('App\Models\Proprietario')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->where('tipo_pagamento', '=', 'Depósito')->orderBy('nome_fantasia', 'ASC')->get();
            })
            ->size(3);
        CRUD::field('num_romaneio')->label('Nº Romaneio')->size(3);
        CRUD::field('num_controle')->label('Nº Controle')->size(3);

        CRUD::field('talhao_id')
            ->attributes(['id' => 'talhao_id'])
            ->label('Talhões')
            ->type('select2')
            ->attribute('nome')
            ->model('App\Models\Talhao')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativo')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('armazem_id')
            ->attributes(['id' => 'armazem_id'])
            ->label('Armazéns')
            ->type('select2')
            ->attribute('nome')
            ->model('App\Models\Armazem')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativo')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('peso_bruto')->size(2)->label('Peso Bruto (Kg).:')->attributes(['id' => 'peso_bruto', 'class' => 'form-control']);
        CRUD::field('peso_desconto')->size(2)->label('Desconto (Kg).:')->attributes(['id' => 'peso_desconto', 'class' => 'form-control']);
        CRUD::field('peso_liquido')->size(2)->label('Peso Liquido (Kg).:')->attributes(['id' => 'peso_liquido', 'class' => 'form-control']);

        CRUD::field('colhedor_id')
            ->label('Colhedores.:')
            ->type('select2')
            ->attribute('nome')
            ->model('App\Models\Colhedor')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativo')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('fazenda_id')
            ->label('Fazendas Deposito.:')
            ->type('select2')
            ->attribute('nome')
            ->model('App\Models\Fazenda')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);
        CRUD::field('desconto')->size(2)->label('Desconto (%).:')->attributes(['id' => 'desconto', 'class' => 'form-control desabilitado']);

        CRUD::field('saco_bruto')->size(2)->label('Sacos Brutos')->attributes(['id' => 'saco_bruto', 'class' => 'form-control desabilitado']);
        CRUD::field('saco_liquido')->size(2)->label('Sacos Líquido')->attributes(['id' => 'saco_liquido', 'class' => 'form-control desabilitado']);
        CRUD::field('valor_frete')->size(2)->label('Valor Frete.:')->attributes(['id' => 'valor_frete', 'class' => 'form-control desabilitado']);

        CRUD::field('motorista_fornecedor_id')->type('hidden')->attributes(['id' => 'motorista_fornecedor_id']);
        CRUD::field('armazen_fornecedor_id')->type('hidden')->attributes(['id' => 'armazen_fornecedor_id']);
        CRUD::field('cultura_id')->type('hidden')->attributes(['id' => 'cultura_id']);
        CRUD::field('variedade_cultura_id')->type('hidden')->attributes(['id' => 'variedade_cultura_id']);
        CRUD::field('colhedor_fornecedor_id')->type('hidden')->attributes(['id' => 'colhedor_fornecedor_id']);
        CRUD::field('matriz_frete_id')->type('hidden')->attributes(['id' => 'matriz_frete_id']);
        CRUD::field('locacao_talhao_id')->type('hidden')->attributes(['id' => 'locacao_talhao_id']);
    }

    /**
     * Define what happens when the Update operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
    /*
    public function index()
    {
        $this->crud->hasAccessOrFail('list');

        $this->data['crud'] = $this->crud;
        $this->data['title'] = $this->crud->getTitle() ?? mb_ucfirst($this->crud->entity_name_plural);
        $registros = LancamentoSafra::get();
        //dd($this->data['registros']);
        //$model = Lan
        //dd($this->crud->columns);
        //dd($this->data->collum);
        $da = $this->data;

        // load the view from /resources/views/vendor/backpack/crud/ if it exists, otherwise load the one in the package
        return view('admin.lacamento_lavoura.index', compact('registros','da') );
    }
*/
    public function index()
    {
        $this->crud->hasAccessOrFail('list');

        $this->data['crud'] = $this->crud;
        $this->data['title'] = $this->crud->getTitle() ?? mb_ucfirst($this->crud->entity_name_plural);
        return view('admin.lacamento_lavoura.index',$this->data);
    }
    public function frete($idTalhao, $idArmazen, $idMotorista)
    {
        $dados = [];
        $bloco = Talhao::find($idTalhao)->bloco;
        $percuso = Armazem::find($idArmazen)->percurso;
        $dados['fornecedor'] = Motorista::find($idMotorista)->fornecedor_id;
        $dados['frete'] = MatrizFrete::where('bloco', '=', $bloco)->where('percurso', '=', $percuso)->first()->frete;
        $dados['locacao'] = LocacaoTalhao::where('talhao_id', '=', $idTalhao)->first();
        return $dados;
    }
}
