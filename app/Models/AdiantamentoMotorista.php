<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Traits\Uuid;
use Spatie\Activitylog\Traits\LogsActivity;
use App\Models\Traits\Empresa;
use \Backpack\CRUD\app\Models\Traits\CrudTrait;

class AdiantamentoMotorista extends Model
{
    use HasFactory, SoftDeletes;

    use LogsActivity;
    use Uuid;
    use Empresa;
    use CrudTrait;

     // Gravação do Log
   protected static $logName = 'AdiantamentoMotorista'; // Nome do Log
   protected static $logAttributes = ['*']; // Pega todos os campos da entidade
   protected static $logOnlyDirty = true;
   protected static $submitEmptyLogs = false;

   // Define o nome da tabela
   protected $table = 'adiantamento_motoristas';

   // Chave Primaria
   protected $primaryKey = 'id';

   
   //Define os campos da entidade
   protected $fillable = [
        'tenant_id',
        'safra_id',
        'fornecedor_id',
        'uuid',
        'data_pagamento',
        'valor_pagamento',
        'tipo_adiantamento',
        'tipo_fornecedor',
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
        'fornecedor_id' => 'integer',
        'data_pagamento' => 'date',
        'valor_pagamento' => 'double',
    ];


    public function tenant()
    {
        return $this->belongsTo(Tenant::class);
    }

    public function safra()
    {
        return $this->belongsTo(Safra::class);
    }

    public function fornecedor()
    {
        return $this->belongsTo(Fornecedor::class);
    }
}
