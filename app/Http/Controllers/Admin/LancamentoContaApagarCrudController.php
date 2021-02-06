<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\LancamentoContaApagarRequest;
use App\Models\LancamentoContaApagar;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class LancamentoContaApagarCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class LancamentoContaApagarCrudController extends CrudController
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
        CRUD::setModel(\App\Models\LancamentoContaApagar::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/lancamentocontaapagar');
        CRUD::setEntityNameStrings('Contas Apagar', 'Contas Apagares');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        //$this->crud->enableDetailsRow();

        CRUD::column('fornecedor_id')->type('select')
            ->entity('Fornecedor')
            ->attribute('nome_fantasia');
        CRUD::column('centro_custo_id')->type('select')
            ->entity('centroCusto')
            ->model('App\Models\CentroCusto')
            ->attribute('nome');
        CRUD::column('numero_documento')->label('Nº Docu.');
        CRUD::column('data_documento')->type('datetime')->format('D/M/YYYY');
        CRUD::column('valor')->type('number')
            ->decimals(2)
            ->prefix('R$ ')
            ->dec_point(',')
            ->thousands_sep('.');
        CRUD::column('status')->label('Situação');

        //$this->crud->enableDetailsRow();
       // $this->crud->setDetailsRowView('vendor.backpack.crud.details_row.monster');
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(LancamentoContaApagarRequest::class);

        CRUD::field('centro_custo_id')
            ->type('select2')
            ->entity('centroCusto')
            ->attribute('nome')
            ->model('App\Models\CentroCusto')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativo')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('fornecedor_id')
            ->type('select2')
            ->entity('fornecedor')
            ->attribute('nome_fantasia')
            //->model('App\Models\CentroCusto')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativo')->orderBy('nome_fantasia', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('numero_documento')->label('Número Documento')->size(3);
        CRUD::field('data_documento')->label('Data Pagamento')->size(3);
        CRUD::field('data_vencimento')->label('Data Vencimento')->size(3);
        CRUD::field('descricao')->label('Descição Pagamento')->size(3);
        CRUD::field('valor')->label('Valor Pago')->size(2)->attributes(['class' => 'form-control valores']);
        CRUD::field('tipo')->label('Tipo')->size(2)->type('enum');
        CRUD::field('status')->label('Situação')->size(2)->type('enum');
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

    public function store()
    {
        $this->crud->hasAccessOrFail('create');

        $request = $this->crud->validateRequest();
        $date = $request->all();

        $date['valor'] = str_replace('.', "", $date['valor']);
        $date['valor'] = str_replace(',', ".", $date['valor']);
        //dd($date);

        $model = LancamentoContaApagar::create($date);
        \Alert::success(trans('Conta Cadastrada com Sucesso'))->flash();
        $this->crud->setSaveAction();

        return $this->crud->performSaveAction($model->id);
    }

    public function update()
    {
        $this->crud->hasAccessOrFail('update');

        $request = $this->crud->validateRequest();
        $date = $request->all();


        $date['valor'] = str_replace('.', "", $date['valor']);
        $date['valor'] = str_replace(',', ".", $date['valor']);

        $model = LancamentoContaApagar::find($request->id);


        $model->update($date);
        \Alert::success(trans('Conta Alterada com Sucesso'))->flash();
        $this->crud->setSaveAction();
        return $this->crud->performSaveAction($model->id);
    }

    protected function setupShowOperation()
    {
        $this->crud->set('show.setFromDb', false);
        CRUD::column('fornecedor_id')->type('select')
            ->entity('Fornecedor')
            ->attribute('nome_fantasia');
        CRUD::column('numero_documento');
        CRUD::column('data_documento')->type('datetime')->format('D/M/YYYY');
        CRUD::column('valor')->type('number')
            ->decimals(2)
            ->prefix('R$ ')
            ->dec_point(',')
            ->thousands_sep('.');
        CRUD::column('descricao')->label('Descição Pagamento')->size(4);
        CRUD::column('status')->label('Situação');
    }

}
