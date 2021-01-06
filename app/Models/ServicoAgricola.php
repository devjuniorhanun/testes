<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Traits\Uuid;
use Spatie\Activitylog\Traits\LogsActivity;
use App\Models\Traits\Empresa;
use \Backpack\CRUD\app\Models\Traits\CrudTrait;

class ServicoAgricola extends Model
{
    use HasFactory, SoftDeletes;

    use LogsActivity;
    use Uuid;
    use Empresa;
    use CrudTrait;

    // Gravação do Log
    protected static $logName = 'ServicoAgricola'; // Nome do Log
    protected static $logAttributes = ['*']; // Pega todos os campos da entidade
    protected static $logOnlyDirty = true;
    protected static $submitEmptyLogs = false;

    // Define o nome da tabela
    protected $table = 'servico_agricolas';

    // Chave Primaria
    protected $primaryKey = 'id';


    //Define os campos da entidade
    protected $fillable = [
        'tenant_id',
        'safra_id',
        'cultura_id',
        'talhao_id',
        'tipo_operacao_agricula_id',
        'uuid',
        'data',
        'volume_bomba',
        'vazao',
        'capacidade_bomba',
        'bomba_recomendada',
        'bomba_usada',
        'diferenca_bomba',
        'area',
        'observacao',
        'status',
        'operadores',
        'produtos',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'tenant_id' => 'integer',
        'safra_id' => 'integer',
        'cultura_id' => 'integer',
        'talhao_id' => 'integer',
        'tipo_operacao_agricula_id' => 'integer',
        'volume_bomba' => 'double',
        'vazao' => 'double',
        'capacidade_bomba' => 'double',
        'bomba_recomendada' => 'double',
        'bomba_usada' => 'double',
        'diferenca_bomba' => 'double',
        'area' => 'double',
        'operadores' => 'array',
        'produtos' => 'array',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'data',
    ];


    public function operadorAgriculas()
    {
        return $this->belongsToMany(OperadorAgricula::class,'operador_agricula_servico_agricola','servico_agricola_id','operador_agricula_id');
    }

    public function produtos()
    {
        return $this->belongsToMany(Produto::class,'produto_servico_agricola','servico_agricola_id','produto_id');
    }

    public function tenant()
    {
        return $this->belongsTo(Tenant::class);
    }

    public function safra()
    {
        return $this->belongsTo(Safra::class);
    }

    public function cultura()
    {
        return $this->belongsTo(Cultura::class);
    }

    public function talhao()
    {
        return $this->belongsTo(Talhao::class);
    }

    public function tipoOperacaoAgricula()
    {
        return $this->belongsTo(TipoOperacaoAgricula::class);
    }

}
