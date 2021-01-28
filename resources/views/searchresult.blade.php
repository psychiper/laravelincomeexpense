@extends('layouts.main')
@section('content')
<div class="container">
    <h1>Home page <a  href="{{ url('/create') }}" class="btn btn-primary btn-sm">+ADD DATA</a> </h1>

    @if (session('successMsg'))
    <div class="alert alert-success" role="alert">
        {{ session('successMsg') }}
    </div>
    @endif
    <table class="table">
        <thead class="black white-text">
            <tr>
                <th scope="col" width="5%">#</th>
                <th scope="col" width="10%">วันที่ใช้จ่าย</th>
                <th scope="col" width="15%">ประเภท</th>
                <th scope="col" width="20%">ชื่อรายการ</th>
                <th scope="col" width="15%">จำนวนเงิน</th>
                <th scope="col" width="15%">action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($students as $index => $student)
            <tr>
                <th scope="row">{{ $index+1 }}</th>
                <td>{{ $student->TransactionDate }}</td>
                <td>{{ $student->type}}</td>
                <td>{{ $student->TransactionName }}</td>
                <td>{{ $student->Amount }}</td>
                <td>
                    <a href="{{ route('edit', $student->id) }}" class="btn btn-warning btn-sm">edit</a>

                    ||
                    <a href="{{ route('del', $student->id) }}" class="btn btn-danger btn-sm" onclick="return confirm('confirm');">del</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
