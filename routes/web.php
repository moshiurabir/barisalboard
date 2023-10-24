<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ExamcpController;
use App\Http\Controllers\BoardcpController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AccountscpController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

/* -----admin Route----- */
Route::prefix('admin')->group(function () {
    Route::get('/',[AdminController::class, 'Index'])->name('login_from');
    Route::get('/login', [AdminController::class, 'Index'])->name('login_from');

    Route::post('/login', [AdminController::class, 'Login'])->name('admin.login');

    Route::get('/dashboard', [AdminController::class, 'Dashboard'])->name('admin.dashboard')->middleware('admin:admin');
    Route::get('/logout', [AdminController::class, 'AdminLogout'])->name('admin.logout')->middleware('admin');
    // Route::get('/dashboard',[AdminController::class, 'Dashboard'])->name('admin.dashboard');
    Route::get('/register', [AdminController::class, 'AdminRegister'])->name('admin.register');
    Route::post('/register/create', [AdminController::class, 'AdminRegisterCreate'])->name('admin.register.create');

});
/* -----End admin Route----- */

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';


Route::middleware('auth', 'role:admin')->group(function () {
    Route::get('/boardcp/dashboard', [BoardcpController::class, 'BoardcpDashboard'])->name('boardcp.dashboard');
    Route::get('/boardcp/logout', [BoardcpController::class, 'BoardcpLogout'])->name('boardcp.logout');

});

Route::middleware('auth', 'role:accounts')->group(function () {
    Route::get('/accountscp/dashboard', [AccountscpController::class, 'AccountscpDashboard'])->name('accountscp.dashboard');
    Route::get('/accountscp/logout', [AccountscpController::class, 'AccountscpLogout'])->name('accountscp.logout');
});
Route::middleware('auth', 'role:exam')->group(function () {
Route::get('/examcp/dashboard', [ExamcpController::class, 'ExamcpDashboard'])->name('examcp.dashboard');
Route::get('/examcp/logout', [ExamcpController::class, 'ExamcpLogout'])->name('examcp.logout');
});

Route::get('/boardcp/login', [BoardcpController::class, 'BoardcpLogin'])->name('boardcp.login');
