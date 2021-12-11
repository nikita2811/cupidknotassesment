@extends('layouts.app')

@section('content')
<div class="container">
	<a href="javascript:void(0)" onclick="age()">Filter by Age</a>
  <a href="javascript:void(0)" onclick="gender()">Filter by Gender</a>
  <a href="javascript:void(0)" onclick="family()">Filter by Family</a>
  <a href="javascript:void(0)" onclick ="income()">Filter by Income Range</a>
  <a href="javascript:void(0)" onclick ="manglik()">Filter by Manglik</a>
	<div class="col-md-12">
 <div class="table-responsive table-custom-container tab" style="margin-top: 20px">
         <div class="col-12" >
         

            <table class="table table-custom ">
       
        <thead>
          <tr>
            
            <th>Name</th>
            <th>Gender</th>
            <th>Dob</th>
            
             
          
            

            
          </tr>
        </thead>
        <tbody>
          @foreach($user as $user)
          <tr id="<?php echo $user->id;?>">
          <td>{{$user->first_name}} {{$user->last_name}}</td>
          <td>{{$user->gender}}</td>
          <td>{{$user->dob}}</td>
          
         @endforeach
        </tbody>
      </table>

    </div>

</div>

</div>
<script type="text/javascript">
function age(){
   var Web_url = "{{url('age')}}";
    
      
    
        $.ajax({
      type: "GET",
      url:Web_url+'?_token=' + '{{ csrf_token() }}',
      data: { },
       
     success: function(data) {
        console.log(data);
     
       },
       });
      }

      function gender(){
   var Web_url = "{{url('gender')}}";
    
      
    
        $.ajax({
      type: "GET",
      url:Web_url+'?_token=' + '{{ csrf_token() }}',
      data: { },
       
     success: function(data) {
        console.log(data);
     
       },
       });
      }


      function income(){
   var Web_url = "{{url('income')}}";
    
      
    
        $.ajax({
      type: "GET",
      url:Web_url+'?_token=' + '{{ csrf_token() }}',
      data: { },
       
     success: function(data) {
        console.log(data);
     
       },
       });
      }


      function family(){
   var Web_url = "{{url('family')}}";
    
      
    
        $.ajax({
      type: "GET",
      url:Web_url+'?_token=' + '{{ csrf_token() }}',
      data: { },
       
     success: function(data) {
        console.log(data);
     
       },
       });
      }

      function manglik(){
   var Web_url = "{{url('manglik')}}";
    
      
    
        $.ajax({
      type: "GET",
      url:Web_url+'?_token=' + '{{ csrf_token() }}',
      data: { },
       
     success: function(data) {
        console.log(data);
     
       },
       });
      }
</script>


@endsection