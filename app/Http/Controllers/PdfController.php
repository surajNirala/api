<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use PDF;

class PdfController extends Controller
{
    public function pdf()
    {
    	$data = ["name" => "suraj"];
    	$pdf = PDF::loadView('pdf.invoice', compact('data'));
return $pdf->stream('invoice.pdf');
    }
}
