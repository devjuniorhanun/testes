<?php

namespace App\Http\Controllers\Admin\Embarque;

use App\Http\Requests\EmbarqueArmazemRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class EmbarqueArmazemCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class EmbarqueArmazemCrudController extends CrudController
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
        CRUD::setModel(\App\Models\EmbarqueArmazem::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/embarquearmazem');
        CRUD::setEntityNameStrings('Embarque Armazém', 'Embarque Armazéns');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->removeButton('delete');
        $this->crud->removeButton('show');
        $this->crud->addClause('where', 'status', '=', 'ABERTO');
        CRUD::column('ardido');
        CRUD::column('avariado');
        CRUD::column('created_at');
        CRUD::column('cultura_id');
        CRUD::column('deleted_at');
        CRUD::column('desconto');
        CRUD::column('fazenda_id');
        CRUD::column('impuresa');
        CRUD::column('motorista_id');
        CRUD::column('partido');
        CRUD::column('peso_bruto');
        CRUD::column('peso_liquido');
        CRUD::column('primeira_pesagem');
        CRUD::column('saco_bruto');
        CRUD::column('saco_liquido');
        CRUD::column('safra_id');
        CRUD::column('segunda_pesagam');
        CRUD::column('status');
        CRUD::column('tenant_id');
        CRUD::column('umidade');
        CRUD::column('updated_at');
        CRUD::column('uuid');

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
        CRUD::setValidation(EmbarqueArmazemRequest::class);
        CRUD::field('safra_id')
            ->label('Safra.:')
            ->type('select2')
            ->attribute('nome')
            ->model('App\Models\Safra')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);

            CRUD::field('cultura_id')
            ->label('Cultura.:')
            ->type('select2')
            ->entity('cultura')
            ->attribute('nome')
            ->options(function ($query) {
                return $query->where('status','=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('motorista_id')
            ->attributes(['id' => 'motorista_id'])
            ->label('Trasportador.:')
            ->type('select2')
            ->attribute('placa_nome')
            ->model('App\Models\Motorista')
            ->options(function ($query) {
                return $query->where('status', '=', 'ATIVO')->orderBy('placa_nome', 'ASC')->get();
            })
            ->size(4);

            CRUD::field('fazenda_id')
            ->label('Fazendas Deposito.:')
            ->type('select2')
            ->attribute('inscricao_estadual')
            ->model('App\Models\Fazenda')
            ->default(0)
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(2);
            CRUD::field('primeira_pesagem')->label('1º Pesagem.:')->size(2)->attributes(['id' => 'primeira_pesagem']);
            CRUD::field('umidade')->label('Umidade.:')->size(2)->attributes(['id' => 'umidade']);
            CRUD::field('segunda_pesagam')->label('2º Pesagem.:')->size(2)->attributes(['id' => 'segunda_pesagam']);
            CRUD::field('impuresa')->label('Impuresa.:')->size(2);
            CRUD::field('ardido')->label('Ardido.:')->size(2);
            CRUD::field('partido')->label('Partidos.:')->size(2);
            CRUD::field('avariado')->label('Avariados.:')->size(2);
            CRUD::field('desconto')->label('Descontos.:')->size(2)->attributes(['id' => 'desconto', 'class' => 'form-control desabilitado']);
            CRUD::field('peso_bruto')->label('Peso Bruto.:')->size(2)->attributes(['id' => 'peso_bruto', 'class' => 'form-control desabilitado']);
            CRUD::field('saco_bruto')->label('Saco Bruto.:')->size(2)->attributes(['id' => 'saco_bruto', 'class' => 'form-control desabilitado']);
            CRUD::field('peso_liquido')->label('Peso Liquido.:')->size(2)->attributes(['id' => 'peso_liquido', 'class' => 'form-control desabilitado']);
            CRUD::field('saco_liquido')->label('Saco Liquido.:')->size(2)->attributes(['id' => 'saco_liquido', 'class' => 'form-control desabilitado']);
            
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

        // load the view from /resources/views/vendor/backpack/crud/ if it exists, otherwise load the one in the package
        dd($this->data);
        return view($this->crud->getListView(), $this->data);
    }*/

}
