@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf






                        <div class="row">
                        <div class="form-group col-md-6">
                            <label for="first_name" class=" col-form-label">{{ __('First Name*') }}</label>

                            
                                <input id="first_name" type="text" class="form-control @error('first_name') is-invalid @enderror" name="first_name" value="{{ old('first_name') }}" required autocomplete="first_name" autofocus>

                                @error('first_name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                    
                        </div>

                         <div class="form-group col-md-6">
                            <label for="last_name" class="col-form-label">{{ __('Last Name*') }}</label>

                            
                                <input id="last_name" type="text" class="form-control @error('last_name') is-invalid @enderror" name="last_name" value="{{ old('last_name') }}" required autocomplete="last_name" autofocus>

                                @error('last_name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            
                        </div>
                    </div>

                        <div class="form-group">
                            <label for="email" class="col-form-label">{{ __('E-Mail Address*') }}</label>

                            
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            
                        </div>

                        <div class="form-group">
                            <label for="password" class="col-form-label">{{ __('Password*') }}</label>

                            
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-form-label">{{ __('Confirm Password*') }}</label>

                            
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                    
                        </div>


                        <div class="form-group">
                            <label for="dob" class="col-form-label">{{ __('Date Of Birth*') }}</label>

                        
                                <input id="dob" type="date" class="form-control @error('dob') is-invalid @enderror" name="dob" value="{{ old('dob') }}" required autocomplete="dob" autofocus>

                                @error('dob')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            
                        </div>
                          <div class="form-group">
                        <input type="radio" id="male" name="gender" value="male" required="">
                        <label for="male">Male</label>
                       <input type="radio" id="female" name="gender" value="female" required="">
                        <label for="female">Female</label>
                       
                   </div>

                    <div class="form-group">
                            <label for="annual_income" class="col-form-label">{{ __('Annual Income*') }}</label>

                        
                                <input id="annual_income" type="text" class="form-control @error('annual_income') is-invalid @enderror" name="annual_income" value="{{ old('annual_income') }}" required autocomplete="annual_income" autofocus>

                                @error('annual_income')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                    </div>

                            <div class="form-group">
                            <label for="occupation" class="col-form-label">{{ __('Occupation') }}</label>

                               <select id="occupation" type="text" class="form-control @error('occupation') is-invalid @enderror" name="occupation" value="{{ old('occupation') }}" autocomplete="occupation" autofocus>
                                <option value="">Please select an occupation</option>
                     <option value="government job">Government Job</option>
                       <option value="private job">Private Job</option>
                      <option value="business">Business</option>
                       
                                </select>
                                

                                @error('occupation')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>




                            <div class="form-group">
                            <label for="family" class="col-form-label">{{ __('Family Type') }}</label>

                               <select id="family" type="text" class="form-control @error('family') is-invalid @enderror" name="family" value="{{ old('family') }}" autocomplete="family" autofocus>
                                <option value="">Please select a family type</option>
                     <option value="Joint">Joint Family</option>
                       <option value="nuclear">Nuclear Family</option>
                     
                       
                                </select>
                                

                                @error('family')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>




                             <div class="form-group">
                            <label for="manglik" class="col-form-label">{{ __('Manglik') }}</label>

                               <select id="manglik" type="text" class="form-control @error('manglik') is-invalid @enderror" name="manglik" value="{{ old('manglik') }}" autocomplete="manglik" autofocus>
                                <option value="">Please select a manglik status</option>
                     <option value="yes">Yes</option>
                       <option value="no">No</option>
                      
                       
                                </select>
                                

                                @error('manglik')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                            <label for="income" class="col-form-label">{{ __('Expected Income') }}</label>

                            <div class="slidecontainer">
                     
                         <input type="range" min="1" max="100" value="" name="income">
                     </div>
                 </div>




                  <div class="form-group">
                            <label for="partner_occupation" class="col-form-label">{{ __('Occupation') }}</label>

                               <select id="partner_occupation" multiple type="text" class="form-control @error('partner_occupation') is-invalid @enderror" name="partner_occupation[]" value="{{ old('partner_occupation') }}" autocomplete="partner_occupation" autofocus>
                                <option value="">Please select an occupation</option>
                     <option value="government job">Government Job</option>
                       <option value="private job">Private Job</option>
                      <option value="business">Business</option>
                       
                                </select>
                                

                                @error('occupation')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>




                            <div class="form-group">
                            <label for="partner_family" class="col-form-label">{{ __('Family Type') }}</label>

                               <select id="partner_family" multiple type="text" class="form-control @error('partner_family') is-invalid @enderror" name="partner_family[]" value="{{ old('partner_family') }}" autocomplete="partner_family" autofocus>
                                <option value="">Please select a family type</option>
                     <option value="Joint">Joint Family</option>
                       <option value="nuclear">Nuclear Family</option>
                     
                       
                                </select>
                                

                                @error('partner_family')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>




                             <div class="form-group">
                            <label for="partner_manglik" class="col-form-label">{{ __('Manglik') }}</label>

                               <select id="partner_manglik" type="text" class="form-control @error('partner_manglik') is-invalid @enderror" name="partner_manglik" value="{{ old('partner_manglik') }}" autocomplete="partner_manglik" autofocus>
                                <option value="">Please select a manglik status</option>
                     <option value="yes">Yes</option>
                       <option value="no">No</option>
                       <option value="both">Both</option>
                      
                       
                                </select>
                                

                                @error('partner_manglik')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
  
  

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>

                    
                </div>
            </div>
             <a class="btn btn-lg btn-primary btn-block" href="{{ url('auth/google') }}">
 <strong>Login With Google</strong>
 </a>
        </div>
    </div>
</div>

@endsection
