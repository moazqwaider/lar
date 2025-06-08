<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CompanyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'owner_id' => $this->faker->numberBetween(1,100),

            'company_name' => $this->faker->name(),
            'image'=>$this->faker->text(),

            'company_address' => $this->faker->address(),
            'company_phone' => $this->faker->phoneNumber(),
        ];
    }
}
