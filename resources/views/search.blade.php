@extends('layouts.main')
@section('content')
<script language="javascript" type="text/javascript">
    function submitregistration() {
        var form = document.reg;

        if (form.range1.value == "") {
            alert("Select Date !");
            return false
        }
    }
</script>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('ค้นหาเดือนที่ต้องการตรวจสอบรายรับ-รายจ่าย') }}</div>

                <div class="card-body">
                    <form method="GET" action="searchresult" name="reg">

                        <div class="form-group row">
                            <label for="range1" class="col-md-4 col-form-label text-md-right">{{ __('Select Date') }}</label>

                            <div class="col-md-6">
                                <input id="range1" type="text" class="form-control range1" name="range1" value="{{ old('range1') }}" placeholder="Click to Select" readonly required>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" onClick="return( submitregistration());" class="btn btn-primary">
                                    {{ __('Submit') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
