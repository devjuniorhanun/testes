<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\MatrizFreteRequest;
use App\Models\MatrizFrete;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class MatrizFreteCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class MatrizFreteCrudController extends CrudController
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
        CRUD::setModel(\App\Models\MatrizFrete::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/matrizfrete');
        CRUD::setEntityNameStrings('Matriz Frete', 'Matriz Fretes');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('bloco');
        CRUD::column('percurso');
        CRUD::column('frete');
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
        CRUD::setValidation(MatrizFreteRequest::class);

        CRUD::field('bloco')->size(3);
        CRUD::field('percurso')->size(3);
        CRUD::field('frete')->size(3)->attributes(['class' => 'form-control areas']);
        CRUD::field('status')->size(3)->type('enum');

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

    protected function setupShowOperation()
    {
        $this->crud->set('show.setFromDb', false);
        CRUD::column('bloco');
        CRUD::column('percurso');
        CRUD::column('frete');
        CRUD::column('status')->type('enum');
    }

    public function store()
    {
        $this->crud->hasAccessOrFail('create');

        // execute the FormRequest authorization and validation, if one is required
        $data = $this->crud->validateRequest()->all();

        if (isset($data['frete'])) {
            $data['frete'] = str_replace('.', "", $data['frete']);
            $data['frete'] = str_replace(',', ".", $data['frete']);
        }

        $model = MatrizFrete::create($data);

        // show a success message
        \Alert::success(trans('Matriz Cadastrada com Sucesso'))->flash();

        // save the redirect choice for next time
        $this->crud->setSaveAction();

        return $this->crud->performSaveAction($model->id);
    }
}
