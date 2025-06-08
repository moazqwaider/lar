<?php

namespace App\Http\Controllers;

use App\Models\Category;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;
class PDFController extends Controller
{
    public function generatePDF()
    {
        $category = Category::get();

        $data = [
            'category' => $category,
        ];

        $pdf = app('dompdf.wrapper')->loadView('myPDF', $data);

        return $pdf->download('itsolutionstuff.pdf');
    }
}
