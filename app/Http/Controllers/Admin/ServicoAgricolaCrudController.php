<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ServicoAgricolaRequest;
use App\Models\Produto;
use App\Models\ServicoAgricola;
use App\Models\Talhao;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use Request;

/**
 * Class ServicoAgricolaCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ServicoAgricolaCrudController extends CrudController
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
        CRUD::setModel(\App\Models\ServicoAgricola::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/servicoagricola');
        CRUD::setEntityNameStrings('Serviço Agrícola', 'Serviços Agrícolas');
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
        CRUD::column('cultura_id')
            ->type('select')
            ->entity('cultura')
            ->attribute('nome');
        CRUD::column('talhao_id')
            ->label('Talhão')
            ->type('select')
            ->entity('talhao')
            ->attribute('nome');
        CRUD::column('tipo_operacao_agricula_id')
            ->label('Operação')
            ->type('select')
            ->entity('tipoOperacaoAgricula')
            ->attribute('nome');
        CRUD::column('data')->type('datetime')->format('D/M/YYYY');
        CRUD::column('volume_bomba');
        CRUD::column('vazao')->label('Vazão');
        CRUD::column('capacidade_bomba')->label('Capacidade Bomba');
        CRUD::column('bomba_recomendada')->label('Bomba Recomendada');
        CRUD::column('bomba_usada')->label('Bomba Usadas');
        CRUD::column('diferenca_bomba')->label('Diferença Bomba');
        CRUD::column('area')->label('Área')->type('number')
        ->decimals(2)
        ->suffix(' ha')
        ->dec_point(',')
        ->thousands_sep('.');
        CRUD::column('observacao')->label('Observações');
        CRUD::column('status')->type('enum');
        
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
        CRUD::setValidation(ServicoAgricolaRequest::class);
        CRUD::field('tipo_operacao_agricula_id')
            ->label('Operação Agrícula')
            ->type('select2')
            ->entity('tipoOperacaoAgricula')
            ->model('App\Models\TipoOperacaoAgricula')
            ->attribute('nome')
            ->attributes(['class' => 'form-control talhao'])
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativo')->orderByDesc('id')->get();
            })
            ->size(3)->tab('Lançamentos');
        CRUD::field('safra_id')
            ->type('select2')
            ->entity('safra')
            ->attribute('nome')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(3)->tab('Lançamentos');
        CRUD::field('cultura_id')
            ->type('select2')
            ->entity('cultura')
            ->attribute('nome')
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativa')->orderBy('nome', 'ASC')->get();
            })
            ->size(3)->tab('Lançamentos');
        CRUD::field('talhao_id')
            ->label('Talhão')
            ->type('select2')
            ->entity('talhao')
            ->attribute('nome')
            ->attributes(['class' => 'form-control talhao', 'id' => 'talhao_id'])
            ->options(function ($query) {
                return $query->where('status', '=', 'Ativo')->orderByDesc('id')->get();
            })
            ->size(3)->tab('Lançamentos');
        CRUD::field('data')->label('Data Aplicação')->size(3)->tab('Lançamentos');
        CRUD::field('volume_bomba')->label('Volume da Bomba')->size(3)->attributes(['id' => 'volume_bomba'])->tab('Lançamentos');
        CRUD::field('vazao')->label('Vazão Bomba')->size(3)->attributes(['id' => 'vazao'])->tab('Lançamentos');
        CRUD::field('area')->label('Área')->size(3)->attributes(['class' => 'form-control desabilitado', 'id' => 'area'])->tab('Lançamentos');
        CRUD::field('capacidade_bomba')->label('Capacidade Bomba')->size(3)->attributes(['class' => 'form-control desabilitado', 'id' => 'capacidade_bomba'])->tab('Lançamentos');
        CRUD::field('bomba_recomendada')->label('Quant. Bomba Recomendada')->size(3)->attributes(['class' => 'form-control desabilitado', 'id' => 'bomba_recomendada'])->tab('Lançamentos');
        CRUD::field('bomba_usada')->label('Quant. Bomba Usada')->size(3)->attributes(['class' => 'form-control', 'id' => 'bomba_usada'])->tab('Lançamentos');
        CRUD::field('diferenca_bomba')->label('Diferença Bomba')->size(3)->attributes(['class' => 'form-control desabilitado', 'id' => 'diferenca_bomba'])->tab('Lançamentos');
        CRUD::field('observacao')->label('Observações')->size(3)->tab('Lançamentos');
        CRUD::field('status')->label('Status')->type('enum')->size(3)->tab('Lançamentos');
        CRUD::field('operadores')->type('repeatable')->tab('Operadores')->fields([
            [
                'name'    => 'operadores',
                'type'    => 'select2',
                'label'   => 'Operadores',
                'attribute' => 'nome',
                'entity' => 'operadorAgriculas',
                'model'             => 'App\Models\OperadorAgricula',
                'store_in'          => 'operadores',
                'fake'              => false,
                'wrapper' => ['class' => 'form-group volumes col-md-4'],
            ],
            [    // SELECT2
                'label'             => 'Função',
                'type'              => 'select2_from_array',
                'name'              => 'tipo_operador',
                'options'           => ['OPERADOR' => 'OPERADOR', 'TANQUEIRO' => 'TANQUEIRO'],
                'tab'               => 'Operadores',
                'store_in'          => 'operadores',
                'fake'              => false,
                'wrapperAttributes' => ['class' => 'form-group col-md-4'],
            ],
        ]);

        CRUD::field('produtos')->type('repeatable')->tab('Produtos')->fields([
            [    // SELECT2
                'label'             => 'Produto',
                'type'              => 'select2',
                'name'              => 'produtos',
                'attribute'         => 'nome',
                'model'             => "App\Models\Produto",
                'store_in'          => 'produtos',
                'fake'              => true,
                'wrapperAttributes' => ['class' => 'form-group col-md-4'],
            ],
            [
                'name'              => 'dose_estimada_hectare',
                'label'             => 'Dose Estinada',
                'store_in'          => 'produtos',
                'fake'              => true,
                'type'              => 'text',
                'tab'               => 'Produtos',
                'wrapperAttributes' => [
                    'class' => 'form-group col-md-4',
                ],
            ],
        ]);

        
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


        if (isset($data['volume_bomba'])) {
            $data['volume_bomba'] = str_replace('.', "", $data['volume_bomba']);
            $data['volume_bomba'] = str_replace(',', ".", $data['volume_bomba']);
        }

        $model = ServicoAgricola::create($data);

        foreach (json_decode($data['operadores']) as $operador) {
            $dados = [
                'servico_agricola_id' => $model->id,
                'operador_agricula_id' => $operador->operadores,
                'tipo_operador' => $operador->tipo_operador,

            ];
            $model->operadorAgriculas()->attach($model->id, $dados);
        }

        foreach (json_decode($data['produtos']) as $produto) {
            $produto->dose_estimada_hectare = str_replace('.', "", $produto->dose_estimada_hectare);
            $produto->dose_estimada_hectare = str_replace(',', ".", $produto->dose_estimada_hectare);
            $dados = [
                'servico_agricola_id' => $model->id,
                'produto_id' => $produto->produtos,
                'dosagem' => $produto->dose_estimada_hectare,
                'quantidade' => round($produto->dose_estimada_hectare * $data['area'], 3),

            ];
            $model->produtos()->attach($model->id, $dados);
            $estoque = Produto::find($produto->produtos); // Recebe o registro do produto
            $dose = round($produto->dose_estimada_hectare * $data['area'], 3); // Dose do produto
            $qtnRetirada = ceil($dose / $estoque->fator_conversao); // Dose Divide pelo fator de conversao
            $qtnRetirada = $qtnRetirada * $estoque->fator_conversao; // Quantidade a ser retirada
            $quantidade = $estoque->estoque - $qtnRetirada; // Quantidade menos estoque
            $estoque->update(['estoque' => $quantidade]); // Salva a retirada
            
        }
        
        // show a success message
        \Alert::success(trans('Operação Cadastrada com Sucesso'))->flash();

        // save the redirect choice for next time
       // $this->crud->setSaveAction();

       // return $this->crud->performSaveAction($model->id);
       //return view('admin.servidos_agricola.servicos',compact('registros','listaColhedor'));
       return redirect()->route('servicos', ['id' => $model->id]);
    }

    public function areaTalhao($idTalhao)
    {
        $area_total =  Talhao::find($idTalhao)->area_total;
        return $area_total;
    }

    public function servico($id)
    {
        return view('admin.servidos_agricola.servicos');

    }
}
