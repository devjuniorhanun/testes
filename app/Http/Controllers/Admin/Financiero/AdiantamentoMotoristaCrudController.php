<?php

namespace App\Http\Controllers\Admin\Financiero;

use App\Http\Requests\AdiantamentoMotoristaRequest;
use App\Models\AdiantamentoMotorista;
use App\Models\LancamentoContaApagar;
use App\Models\LancamentoSafra;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use Illuminate\Http\Request;

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
            ->label('Transportador.:')
            ->type('select2_from_ajax')
            ->attribute('razao_social')
            ->data_source('motoristas')
            ->placeholder('Transportador')
            ->include_all_form_fields(true)
            ->minimum_input_length(0)
            ->method('post')
            ->size(3);
        CRUD::field('data_pagamento')->label('Data Pagamento.:')->size(3);
        CRUD::field('valor_pagamento')->label('Valor Pagamento.:')->size(2)->attributes(['class' => 'form-control valores']);
        CRUD::field('tipo_adiantamento')->label('Tipo Adiantamento.:')->type('enum')->size(2);
        CRUD::field('nome_banco')->label('Banco.:')->size(3);
        CRUD::field('agencia')->label('Agência.:')->size(3);
        CRUD::field('num_conta')->label('Nº Cheque.:')->size(3);

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

        // Retira transforma a virgula em ponto
        if (isset($data['valor_pagamento'])) {
            $data['valor_pagamento'] = str_replace('.', "", $data['valor_pagamento']);
            $data['valor_pagamento'] = str_replace(',', ".", $data['valor_pagamento']);
        }

        $model = AdiantamentoMotorista::create($data);

        switch ($data['tipo_adiantamento'] == 'DEPOSITO') {
            case 'DEPOSITO':
                $tipoPagamento = 'TRANSFERÊNCIA';
                break;
            case 'CHEQUE':
                $tipoPagamento = 'CHEQUE';
                break;
            default:
                $tipoPagamento = 'DINHEIRO';
                break;
        }

        $conta = [
            'numero_documento' => $model->id,
            'fornecedor_id' => $data['fornecedor_id'],
            'centro_custo_id' => 1,
            'data_documento' => $data['data_pagamento'],
            'data_vencimento' => $data['data_pagamento'],
            'descricao' => 'Adiantamento de Colheita para ' . $model->fornecedor->razao_social,
            'valor' => $data['valor_pagamento'],
            'tipo' => $tipoPagamento,
            'status' => 'APAGO'
        ];


        $contaApagar = LancamentoContaApagar::create($conta);

        // show a success message
        \Alert::success(trans('Adiantamento Cadastro com Sucesso'))->flash();

        // save the redirect choice for next time
        $this->crud->setSaveAction();

        return $this->crud->performSaveAction($model->id);
    }

    protected function setupShowOperation()
    {
        /*
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
        */
        $this->crud->hasAccessOrFail('show');

        $this->data['crud'] = $this->crud;
        $this->data['title'] = $this->crud->getTitle() ?? mb_ucfirst($this->crud->entity_name_plural);
        //$this->data['colhido'] = LancamentoSafra::where('safra_id', '=', '2')->select(DB::raw('SUM(peso_bruto) as peso'))->first()->peso;
        return view('admin.lacamento_lavoura.index', $this->data);
    }

    public function show($id)
    {
        $this->crud->hasAccessOrFail('show');
        /// get the info for that entry
        $this->data['entry'] = $this->crud->getEntry($id);
        $this->data['crud'] = $this->crud;

        // get entry ID from Request (makes sure its the last ID for nested resources)
        $id = $this->crud->getCurrentEntryId() ?? $id;
        $setFromDb = $this->crud->get('show.setFromDb');

        // set columns from db
        if ($setFromDb) {
            $this->crud->setFromDb();
        }
        //dd($this->data['entry']);

        return view('financeiro.adiantamento.motorista', $this->data);
    }

    public function motoristas(Request $request)
    {
        $search_term = $request->input('q');
        $form = collect($request->input('form'))->pluck('value', 'razao_social');

        if ($search_term) {
            $options = AdiantamentoMotorista::listaTransportador();
        } else {
            $options = AdiantamentoMotorista::listaTransportadores();
        }
        //$options = AdiantamentoMotorista::listaTransportador();
        return $options;
    }
}
