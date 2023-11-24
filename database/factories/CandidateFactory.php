<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class CandidateFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $this->faker->addProvider(new \Faker\Provider\id_ID\PhoneNumber($this->faker));
        $this->faker->locale('id_ID');
        $uniquePhoneNumber = $this->faker->unique()->numerify('08##########');
        $salary = $this->faker->numberBetween(80, 250) * 100000;
        return [
            'email' => $this->faker->unique()->safeEmail(),
            'phone_number' => $uniquePhoneNumber,
            'full_name' => $this->faker->name(),
            'dob' => $this->faker->date(),
            'pob' => $this->faker->city(),
            'gender' => $this->faker->randomElement(['m', 'f']),
            'year_exp' => $this->faker->numberBetween(0, 20),
            'last_salary' => $salary,
        ];
    }
}
