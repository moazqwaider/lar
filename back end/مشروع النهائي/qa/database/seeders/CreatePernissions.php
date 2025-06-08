<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class CreatePernissions extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data=[
            "employee..list",
            "employee..create",
            "employee..adit",
            "employee..delete",
            "role..list",
            "role..create",
            "role..adit",
            "role..delete",
            "permission..list",
            "permission..create",
            "permission..adit",
            "permission..delete",



        ];
        foreach($data as $permission){
            Permission::create(['name'=>$permission]);
        }
    }
}
