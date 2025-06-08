<?php

namespace Database\Seeders;

use App\Models\Service;
use App\Models\Category;
use App\Models\Permission;
use App\Models\Advertisement;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PermissionSeeder extends Seeder
{
    protected $permissions=[
        'view_category'=>'view all Category',
        'add_category'=>'Add new Category',
        'edit_category'=>'Edit new Category',
        'delete_category'=>'Delete new Category',

        'view_advertisement'=>'view all Advertisement',
        'add_advertisement'=>'Add new Advertisement',
        'edit_advertisement'=>'Edit new Advertisement',
        'delete_advertisement'=>'Delete new Advertisement',


        'view_service'=>'view all Service',
        'delete_service'=>'Delete new Service',

        'view_reports'=>'view all Reports',


        'view_payments'=>'view all Payments',



    ];
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        foreach($this->permissions as $code =>$name){
            Permission::create([
                'name'=>$name,
                'code'=>$code,

            ]);
        }
    }
}
