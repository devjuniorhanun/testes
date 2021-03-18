<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Fazenda;
use App\Models\InscricaoEstadual;
use App\Models\Proprietario;
use App\Models\Tenant;

class InscricaoEstadualFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = InscricaoEstadual::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'tenant_id' => Tenant::factory(),
            'fazenda_id' => Fazenda::factory(),
            'proprietario_id' => Proprietario::factory(),
            'uuid' => $this->faker->uuid,
            'inscricao' => $this->faker->word,
            'status' => $this->faker->randomElement(["ATIVA","DESATIVADA"]),
        ];
    }
}
