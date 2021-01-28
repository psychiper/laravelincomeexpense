<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        $students = Student::paginate(10);
    	return view('welcome', compact('students'));
    }

    public function create()
    {
    	return view('create');
    }

    public function search()
    {
    	return view('search');
    }

    public function showsearch(Request $request)
    {
        $fulldate = $request->range1;
        //dd($fulldate);
        //$students = Student::paginate(5);
        $students = Student::select('id', 'type', 'TransactionName', 'Amount', 'TransactionDate')
        ->whereBetween('TransactionDate', [$fulldate.'-01', $fulldate.'-31'])
        ->orderBy('TransactionDate', 'ASC')
        ->get();
        //dd($students);
    	return view('searchresult', compact('students'));
    }



    public function store(Request $request)
    {
    	$this->validate($request, [
            'type'=> 'required|in:income,expense',
    		'TransactionName' => 'required',
            'Amount' => 'required|numeric',
            'TransactionDate' => 'required'
    	]);

    	$student = new Student;
    	$student->type = $request->type;
    	$student->TransactionName = $request->TransactionName;
        $student->Amount = number_format($request->Amount, 2);
        $student->TransactionDate = $request->TransactionDate;
    	$student->save();
    	return redirect(route('home'))->with('successMsg','add data Successfully ');
    }


    public function edit($id)
    {
    	$student = Student::find($id);
    	return view('edit', compact('student'));
    }


    public function update(Request $request, $id)
    {
    	$this->validate($request, [
            'type'=> 'required|in:income,expense',
    		'TransactionName' => 'required',
            'Amount' => 'required|numeric',
            'TransactionDate' => 'required'
    	]);

    	$student =  Student::find($id);
    	$student->type = $request->type;
    	$student->TransactionName = $request->TransactionName;
        $student->Amount = number_format($request->Amount, 2);
        $student->TransactionDate = $request->TransactionDate;
    	$student->save();
    	return redirect(route('home'))->with('successMsg','Update data Successfully ');
    }


    public function del($id)
    {
    		Student::find($id)->delete();
    		return redirect(route('home'))->with('successMsg','Delete data Successfully');
    }



}
