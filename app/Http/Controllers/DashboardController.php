<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use\App\Models\Transaction;

class DashboardController extends Controller
{

     /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $income = Transaction::where('transaction_status','SUCCESS')->sum('transaction_total');
        $sale   = Transaction::count();
        $items  = Transaction::with('details')->orderBy('id','DESC')->take(5)->get();
        $pie    = [
            'pending' => Transaction::where('transaction_status','PENDING')->count(),
            'failed' => Transaction::where('transaction_status','FAILED')->count(),
            'success' => Transaction::where('transaction_status','SUCCESS')->count(),
        ];

        return view('pages.dashboard')->with([
            'income' => $income,
            'sale' => $sale,
            'items' => $items,
            'pie' => $pie
        ]);
    }
}