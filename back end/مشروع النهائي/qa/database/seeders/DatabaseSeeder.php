<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\usersSeeder;
use Database\Seeders\CompanySeeder;
use Database\Seeders\CountrySeeder;
use Database\Seeders\CreatePernissions;
use Database\Seeders\CreateAdminuserseeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
     // $this->call(CountrySeeder::class);
     //  $this->call(CompanySeeder::class);
   //  $this->call(CountrySeeder::class);
   //    $this->call(usersSeeder::class);
       $this->call(CreatePernissions::class);
      $this->call(CreateAdminuserseeder::class);


    }

}
