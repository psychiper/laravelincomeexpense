@extends('layouts.main')
@section('content')
<h1>Edit Page</h1>
<!-- Default form register -->
<div class="container">
	<div class="row">
		<div class="col-sm-8">
			@if($errors->any())
			@foreach ($errors->all() as $error)
			<div class="alert alert-danger" role="alert">
				 {{ $error }}
			</div>
			@endforeach

			@endif
			<form class="text-center border border-light p-5" action="{{ route('update',$student->id) }}" method="POST">
				{{ csrf_field() }}
				<p class="h4 mb-4">edit data</p>

                    <div class="form-row mb-4">
                        <div class="col">
                        <label class="form-check-label" for="inlineRadio1">ประเภท:</label>
                        </div>

                        <div class="col">
                        <div class="form-check form-check-inline">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="type"
                              id="inlineRadio1"
                              value="income" {{ $student->type == "income" ? 'checked' : '' }}>
                            <label class="form-check-label" for="inlineRadio1">รายรับ</label>
                          </div>
                        </div>

                        <div class="col">
                          <div class="form-check form-check-inline">
                            <input
                              class="form-check-input"
                              type="radio"
                              name="type"
                              id="inlineRadio2"
                              value="expense" {{ $student->type == "expense" ? 'checked' : '' }}>
                            <label class="form-check-label" for="inlineRadio2">รายจ่าย</label>
                          </div>
                        </div>

                    </div>

                    <div class="form-row mb-4">
                        <div class="col">
                            <!-- TransactionName -->
                            <input type="text" name="TransactionName" id="defaultRegisterFormTransactionName" class="form-control" placeholder="ชื่อรายการ" value="{{ $student->TransactionName }}">
                        </div>
                    </div>

                    <!-- Amount -->
                    <input type="text" name="Amount" id="defaultRegisterFormAmount" class="form-control mb-4" placeholder="จำนวนเงิน" value="{{ $student->Amount }}">

                    <div class="md-form">
                        <input name="TransactionDate" placeholder="Selected date" type="text" id="date-picker-example" class="form-control datepicker" value="{{ $student->TransactionDate }}">
                        <label for="date-picker-example">วันที่ใช้จ่าย</label>
                      </div>

				<!-- Sign up button -->
                <button class="btn btn-info my-4 btn-block" type="submit">Update data</button>

			</form>
		</div>
	</div>
</div>
@endsection
