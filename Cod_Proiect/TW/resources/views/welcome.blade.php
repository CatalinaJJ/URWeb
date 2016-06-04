@extends('layouts.app')
@include('includes.header')
@section('title')
    U R Web!
@endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Welcome</div>

                <div class="panel-body">
                    This is the landing page.
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
