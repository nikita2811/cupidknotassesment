@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Matches') }}</div>

                <div class="card-body">
                   @foreach($match as $match)
                   <div class="row">
                   <div class="col-md-6">
                   {{$match->first_name}}
               </div>
                   @if($match->occupation ==Auth::user()->occupation or $match->income ==Auth::user()->annual_income)
                    <div class="col-md-6">
                   <div>50% Matched</div>
               </div>

                   @endif
               </div>
                   @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
