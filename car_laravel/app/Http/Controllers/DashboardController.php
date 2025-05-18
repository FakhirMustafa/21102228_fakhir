<?php

namespace App\Http\Controllers;

use App\Models\Car;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $cars = Car::orderBy('id', 'asc')->get();
        return view('dashboard', compact('cars'));
    }
}

