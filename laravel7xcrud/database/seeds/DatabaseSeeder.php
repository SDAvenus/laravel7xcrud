<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'name'=>'huy',
            'email'=>'vithanhhuy@gmail.com',
            'password'=>Hash::make('123abc'),
        ];
        DB::table('users')->insert($data);
    }
}
