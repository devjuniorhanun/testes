<?php

namespace App\Http\Controllers\Admin\Silo;

use App\Http\Requests\ContratoEmbarqueRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class ContratoEmbarqueCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ContratoEmbarqueCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Silo\ContratoEmbarque::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/contratoembarque');
        CRUD::setEntityNameStrings('contratoembarque', 'contrato_embarques');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('tenant_id');
        CRUD::column('safra_id');
        CRUD::column('inscricao_estadual_id');
        CRUD::column('cultura_id');
        CRUD::column('fornecedor_id');
        CRUD::column('uuid');
        CRUD::column('quantidade');
        CRUD::column('status');

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
        CRUD::setValidation(ContratoEmbarqueRequest::class);

        CRUD::field('tenant_id');
        CRUD::field('safra_id');
        CRUD::field('inscricao_estadual_id');
        CRUD::field('cultura_id');
        CRUD::field('fornecedor_id');
        CRUD::field('uuid');
        CRUD::field('quantidade');
        CRUD::field('status');

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
}
