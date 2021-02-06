<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Traits\Uuid;
use Spatie\Activitylog\Traits\LogsActivity;
use App\Models\Traits\Empresa;
use \Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Support\Facades\DB;

class LancamentoSafra extends Model
{
    use HasFactory, SoftDeletes;

    use LogsActivity;
    use Uuid;
    use Empresa;
    use CrudTrait;

    // Gravação do Log
    protected static $logName = 'LancamentoSafra'; // Nome do Log
    protected static $logAttributes = ['*']; // Pega todos os campos da entidade
    protected static $logOnlyDirty = true;
    protected static $submitEmptyLogs = false;

    // Define o nome da tabela
    protected $table = 'lancamento_safras';

    // Chave Primaria
    protected $primaryKey = 'id';


    //Define os campos da entidade
    protected $fillable = [
        'tenant_id',
        'locacao_talhao_id',
        'safra_id',
        'cultura_id',
        'variedade_cultura_id',
        'talhao_id',
        'motorista_id',
        'motorista_fornecedor_id',
        'proprietario_id',
        'armazem_id',
        'armazen_fornecedor_id',
        'colhedor_id',
        'colhedor_fornecedor_id',
        'fazenda_id',
        'matriz_frete_id',
        'data_colhido',
        'num_romaneio',
        'num_controle',
        'peso_bruto',
        'peso_desconto',
        'desconto',
        'peso_liquido',
        'saco_liquido',
        'saco_bruto',
        'valor_frete',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'tenant_id' => 'integer',
        'locacao_talhao_id' => 'integer',
        'safra_id' => 'integer',
        'cultura_id' => 'integer',
        'variedade_cultura_id' => 'integer',
        'talhao_id' => 'integer',
        'motorista_id' => 'integer',
        'motorista_fornecedor_id' => 'integer',
        'proprietario_id' => 'integer',
        'armazem_id' => 'integer',
        'armazen_fornecedor_id' => 'integer',
        'colhedor_id' => 'integer',
        'colhedor_fornecedor_id' => 'integer',
        'fazenda_id' => 'integer',
        'matriz_frete_id' => 'integer',
        'data_colhido' => 'date',
        'peso_bruto' => 'double',
        'peso_desconto' => 'double',
        'desconto' => 'double',
        'peso_liquido' => 'double',
        'saco_liquido' => 'double',
        'saco_bruto' => 'double',
        'valor_frete' => 'double',
    ];


    public function tenant()
    {
        return $this->belongsTo(Tenant::class);
    }

    public function locacaoTalhao()
    {
        return $this->belongsTo(LocacaoTalhao::class);
    }

    public function safra()
    {
        return $this->belongsTo(Safra::class);
    }

    public function cultura()
    {
        return $this->belongsTo(Cultura::class);
    }

    public function variedadeCultura()
    {
        return $this->belongsTo(VariedadeCultura::class);
    }

    public function talhao()
    {
        return $this->belongsTo(Talhao::class);
    }

    public function motorista()
    {
        return $this->belongsTo(Motorista::class);
    }

    public function motoristaFornecedor()
    {
        return $this->belongsTo(Fornecedor::class);
    }

    public function proprietario()
    {
        return $this->belongsTo(Proprietario::class);
    }

    public function armazem()
    {
        return $this->belongsTo(Armazem::class);
    }

    public function armazenFornecedor()
    {
        return $this->belongsTo(Fornecedor::class);
    }

    public function colhedor()
    {
        return $this->belongsTo(Colhedor::class);
    }

    public function colhedorFornecedor()
    {
        return $this->belongsTo(Fornecedor::class);
    }

    public function fazenda()
    {
        return $this->belongsTo(Fazenda::class);
    }

    public function matrizFrete()
    {
        return $this->belongsTo(MatrizFrete::class);
    }

    public function loca()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')

            ->pluck('nome', 'id');
        return $result;
    }

    /**
     * Método scopeListagem($query,$pagina)
     * Responsavel por listar todos os registros, ativos.
     * @param $query
     * @param $pagina
     * @return mixed
     * @return \Illuminate\Contracts\Pagination\LengthAwarePaginator
     */
    public function scopeListagem($query)
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->where('lancamento_safras.id', '>', 0)
            ->leftJoin('lancamento_safras', 'lancamento_safras.safra_id', '=', 'safras.id')
            ->leftJoin('motoristas', 'motoristas.id', '=', 'lancamento_safras.motorista_id')
            ->leftJoin('talhaos', 'talhaos.id', '=', 'lancamento_safras.talhao_id')
            ->leftJoin('matriz_fretes', 'matriz_fretes.id', '=', 'lancamento_safras.matriz_frete_id')
            ->leftJoin('armazems', 'armazems.id', '=', 'lancamento_safras.armazem_id')
            ->select('lancamento_safras.*', 'motoristas.placa_nome as motorista', 'talhaos.nome as talhao', 'matriz_fretes.frete as matrizFrete', 'armazems.nome as nomeArmazen')
            ->get();
        //->paginate($pagina);
        //dd($result);
        return $result;
    }

    public function scopeTotalColhido()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->leftJoin('lancamento_safras', 'lancamento_safras.safra_id', '=', 'safras.id')
            ->select(
                DB::raw('SUM(peso_liquido) as liquido'),
                DB::raw('SUM(saco_liquido) as sacos'),
                DB::raw('SUM(valor_frete) as frete')
            )
            ->first();
        return $result;
    }

    public function scopeTotalColhidoCulutra()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->leftJoin('lancamento_safras', 'lancamento_safras.safra_id', '=', 'safras.id')
            ->join('locacao_talhaos', 'lancamento_safras.locacao_talhao_id', '=', 'locacao_talhaos.id')
            ->join('culturas', 'locacao_talhaos.cultura_id', '=', 'culturas.id')
            ->select(
                'culturas.nome',
                DB::raw('SUM(saco_liquido) as sacos')
            )
            ->orderBy('culturas.nome')
            ->groupBy('culturas.id')
            ->get();
        return $result;
    }

    public function scopeListaData()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->leftJoin('lancamento_safras', '.safra_id', '=', 'safras.id')
            ->where('lancamento_safras.data_colhido', '<>', null)
            ->select('lancamento_safras.data_colhido')
            ->orderBy('lancamento_safras.data_colhido')
            ->groupBy('lancamento_safras.data_colhido')
            ->get();
        return $result;
    }

    public function scopeListaMotorista()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->leftJoin('lancamento_safras', '.safra_id', '=', 'safras.id')
            ->where('lancamento_safras.data_colhido', '<>', null)
            ->leftJoin('motoristas', 'motoristas.id', '=', 'lancamento_safras.motorista_id')
            ->select('motoristas.id', 'motoristas.nome')
            ->orderBy('motoristas.nome')
            ->groupBy('motoristas.id')
            ->get();
        return $result;
    }

    public function scopeListaTransportador()
    {
        $result = DB::table('fornecedors')->where('fornecedors.finalidade', '=', 'TRANSPORTADOR')
            ->join('lancamento_safras', 'lancamento_safras.motorista_fornecedor_id', '=', 'fornecedors.id')
            ->join('safras', 'safras.id', '=', 'lancamento_safras.safra_id')
            ->leftJoin('adiantamento_motoristas', 'adiantamento_motoristas.fornecedor_id', '=', 'fornecedors.id')
            ->select(
                'fornecedors.*',
                'lancamento_safras.motorista_fornecedor_id',
                DB::raw('SUM(saco_bruto) as sacoBruto'),
                DB::raw('SUM(valor_frete) as frete'),
                DB::raw('count(lancamento_safras.id) as qtnViagem'),
                DB::raw('SUM(adiantamento_motoristas.valor_pagamento) as valorAdiantamento')
            )
            ->where('safras.status', '=', 'Ativa')
            ->groupBy('lancamento_safras.motorista_fornecedor_id')
            ->get();
        //dd($result);
        return $result;
    }

    

    public function scopeListaTalhao()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->leftJoin('lancamento_safras', '.safra_id', '=', 'safras.id')
            ->where('lancamento_safras.data_colhido', '<>', null)
            ->leftJoin('talhaos', 'talhaos.id', '=', 'lancamento_safras.talhao_id')
            ->select('talhaos.id', 'talhaos.nome')
            ->orderBy('talhaos.nome')
            ->groupBy('talhaos.id')
            ->get();
        return $result;
    }

    public function scopeListaArmazem()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->leftJoin('lancamento_safras', '.safra_id', '=', 'safras.id')
            ->where('lancamento_safras.data_colhido', '<>', null)
            ->leftJoin('armazems', 'armazems.id', '=', 'lancamento_safras.armazem_id')
            ->select('armazems.id', 'armazems.nome')
            ->orderBy('armazems.nome')
            ->groupBy('armazems.id')
            ->get();
        return $result;
    }

    public function scopeListaColhedores()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
            ->leftJoin('lancamento_safras', '.safra_id', '=', 'safras.id')
            ->where('lancamento_safras.data_colhido', '<>', null)
            ->leftJoin('colhedors', 'colhedors.id', '=', 'lancamento_safras.colhedor_id')
            ->select('colhedors.id', 'colhedors.nome')
            ->orderBy('colhedors.nome')
            ->groupBy('colhedors.id')
            ->get();
        return $result;
    }

    public function scopeMapaProdutividade()
    {
        $result = DB::table('safras')->where('safras.status', '=', 'Ativa')
        ->join('lancamento_safras', '.safra_id', '=', 'safras.id')
        ->join('locacao_talhaos', 'lancamento_safras.locacao_talhao_id', '=', 'locacao_talhaos.id')
        ->join('culturas', 'locacao_talhaos.cultura_id', '=', 'culturas.id')
        ->join('talhaos', 'locacao_talhaos.talhao_id', '=', 'talhaos.id')
        ->where('lancamento_safras.data_colhido', '<>', null)
        ->select('locacao_talhaos.area_plantada','talhaos.nome', 'culturas.nome as culturaNome',
            DB::raw('SUM(lancamento_safras.saco_liquido) as saco_liquido')
        )
        ->orderBy('locacao_talhaos.cultura_id')
        ->orderBy('talhaos.nome')
        ->groupBy('lancamento_safras.locacao_talhao_id','locacao_talhaos.cultura_id')
        ->get();
        //dd($result);
    return $result;

    }

    public function scopeRelatorios()
    {
    }
}
