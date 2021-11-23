<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::truncate();

        $users = [
            [
                'name' => 'Admin',
                'username' => 'Admin',
                'password' => Hash::make('12345678'),
                'email' => 'admin@gmail.com',
                'phone' => '089610526045',
                'roles' => 'ADMIN',
            ],
            [
                'name' => 'Partner',
                'username' => 'Partner',
                'password' => Hash::make('12345678'),
                'email' => 'partner@gmail.com',
                'phone' => '081271371234',
                'roles' => 'PARTNER',
            ],
            [
                'name' => 'User',
                'username' => 'User',
                'password' => Hash::make('12345678'),
                'email' => 'user@gmail.com',
                'phone' => '081354265023',
                'roles' => 'USER',
            ],
        ];

        foreach ($users as $user) {
            User::create($user);
        }
    }
}
