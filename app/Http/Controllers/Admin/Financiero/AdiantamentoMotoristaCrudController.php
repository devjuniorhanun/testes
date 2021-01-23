<?php

namespace App\Http\Controllers\Admin\Financiero;

use App\Http\Requests\AdiantamentoMotoristaRequest;
use App\Models\AdiantamentoMotorista;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class AdiantamentoMotoristaCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class AdiantamentoMotoristaCrudController extends CrudController
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
        CRUD::setModel(\App\Models\AdiantamentoMotorista::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/adiantamentomotorista');
        CRUD::setEntityNameStrings('Adiantamento Motorista', 'Adiantamentos Motoristas');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('safra_id')
            ->type('select')
            ->entity('safra')
            ->attribute('nome');
        CRUD::column('fornecedor_id')
            ->type('select')
            ->entity('fornecedor')
            ->attribute('nome_fantasia');
        CRUD::column('data_pagamento')->type('datetime')->format('DD/MM/YYYY');
        CRUD::column('valor_pagamento')->type('number')
            ->prefix('R$ ')
            ->decimals(2)
            ->dec_point(',')
            ->thousands_sep('.');
        CRUD::column('tipo_adiantamento')->type('enum');

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
        CRUD::setValidation(AdiantamentoMotoristaRequest::class);

        CRUD::field('safra_id')
            ->label('Safra.:')
            ->type('select2')
            ->attribute('nome')
            ->model('App\Models\Safra')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(3);

        CRUD::field('fornecedor_id')
            ->attributes(['id' => 'fornecedor_id'])
            ->entity('entity')
            ->label('Trasportador.:')
            ->type('select2')
            //->entity('centroCusto')
            ->attribute('razao_social')
            //->model('App\Models\Fornecedor')
            ->options(function ($query) {
                return $query->where('status', '=', 'ATIVO')->where('finalidade', '=', 'TRANSPORTADOR')->orderBy('razao_social', 'ASC')->get();
            })
            ->size(3);
        CRUD::field('data_pagamento')->size(2);
        CRUD::field('valor_pagamento')->size(2)->attributes(['class' => 'form-control valores']);
        CRUD::field('tipo_adiantamento')->type('enum')->size(2);

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number'])); 
         */
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

        // execute the FormRequest authorization and validation, if one is required
        $data = $this->crud->validateRequest()->all();

        if (isset($data['valor_pagamento'])) {
            $data['valor_pagamento'] = str_replace('.', "", $data['valor_pagamento']);
            $data['valor_pagamento'] = str_replace(',', ".", $data['valor_pagamento']);
        }

        $data['tipo_fornecedor'] = 'TRANSPORTADOR';

        $model = AdiantamentoMotorista::create($data);

        // show a success message
        \Alert::success(trans('Adiantamento Cadastro com Sucesso'))->flash();

        // save the redirect choice for next time
        $this->crud->setSaveAction();

        return $this->crud->performSaveAction($model->id);
    }

    protected function setupShowOperation()
    {
        $this->crud->set('show.setFromDb', false);
        CRUD::column('safra_id')
            ->type('select')
            ->entity('safra')
            ->attribute('nome');
        CRUD::column('fornecedor_id')
            ->type('select')
            ->entity('fornecedor')
            ->attribute('nome_fantasia');
        CRUD::column('data_pagamento')->type('datetime')->format('DD/MM/YYYY');
        CRUD::column('valor_pagamento')->type('number')
            ->prefix('R$ ')
            ->decimals(2)
            ->dec_point(',')
            ->thousands_sep('.');
        CRUD::column('tipo_adiantamento')->type('enum');
    }
}
