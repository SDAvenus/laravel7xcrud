<style>
    body{
          padding-top:4.2rem;
          padding-bottom:4.2rem;
          background:rgba(0, 0, 0, 0.76);
        }
    a{
       text-decoration:none !important;
       }
    h1,h2,h3{
       font-family: 'Kaushan Script', cursive;
         }
    .myform{
        position: relative;
        display: -ms-flexbox;
        display: flex;
        padding: 1rem;
        -ms-flex-direction: column;
        flex-direction: column;
        width: 100%;
        pointer-events: auto;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid rgba(0,0,0,.2);
        border-radius: 1.1rem;
        outline: 0;
        max-width: 500px;
		 }
     .tx-tfm{
         text-transform:uppercase;
         }
     .mybtn{
         border-radius:50px;
         }
        
     .login-or {
         position: relative;
         color: #aaa;
         margin-top: 10px;
         margin-bottom: 10px;
         padding-top: 10px;
         padding-bottom: 10px;
         }
     .span-or {
         display: block;
         position: absolute;
         left: 50%;
         top: -2px;
         margin-left: -25px;
         background-color: #fff;
         width: 50px;
         text-align: center;
         }
     .hr-or {
         height: 1px;
         margin-top: 0px !important;
         margin-bottom: 0px !important;
         }
     .google {
         color:#666;
         width:100%;
         height:40px;
         text-align:center;
         outline:none;
         border: 1px solid lightgrey;
         }
     form .error {
         color: #ff0000;
         }
      #second{display:none;}
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
      <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<body>
    <div class="container">
        <div class="row">
		      <div class="col-md-5 mx-auto">
			      <div id="first">
			      	<div class="myform form ">
					      <div class="logo mb-3">
						      <div class="col-md-12 text-center">
						      	<h1>Register</h1>
						      </div>
					      </div>
                <form action="{{url('/register')}}" method="post" name="login">
                @csrf
                @if(session('status'))
                   <div class="alert alert-success">
                        {{session('status')}}
                  </div>
                @endif
                 <div class="form-group">
                     <label for="exampleInputEmail1">T??n Ng?????i D??ng</label>
                     <input type="text" name="name"  class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter email">
                  </div>

                  <div class="form-group">
                     <label for="exampleInputEmail1">Email</label>
                     <input type="email" name="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                  </div>

                  <div class="form-group">
                      <label for="exampleInputEmail1">M???t Kh???u</label>
                      <input type="password" name="password" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                   </div>

                  <div class="form-group">
                      <label for="exampleInputEmail1">Nh???p l???i m???t kh???u</label>
                      <input type="password" name="repassword" id="password"  class="form-control" aria-describedby="emailHelp" placeholder="Enter Password Again">
                   </div>

                    <div class="col-md-12 text-center ">
                        <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Register</button>
                    </div>
                    <div class="form-group">
                         <p class="text-center">Have an account? <a href="{{url('/login')}}" id="signup">????ng Nh???p</a></p>
                         <p class="text-center"><a class="btn btn-primary" href="{{url('/')}}" id="signup">Trang Ch???</a></p>
                        </div>
                  </form>    
				        </div>
			        </div>
            </div>
          </div> 
      </div>       
</body>

<script>
  $("#signup").click(function() {
$("#first").fadeOut("fast", function() {
$("#second").fadeIn("fast");
});
});

$("#signin").click(function() {
$("#second").fadeOut("fast", function() {
$("#first").fadeIn("fast");
});
});


  
         $(function() {
           $("form[name='login']").validate({
             rules: {
               
               email: {
                 required: true,
                 email: true
               },
               password: {
                 required: true,
                 
               }
             },
              messages: {
               email: "Please enter a valid email address",
              
               password: {
                 required: "Please enter password",
                
               }
               
             },
             submitHandler: function(form) {
               form.submit();
             }
           });
         });
         


$(function() {
  
  $("form[name='registration']").validate({
    rules: {
      firstname: "required",
      lastname: "required",
      email: {
        required: true,
        email: true
      },
      password: {
        required: true,
        minlength: 5
      }
    },
    
    messages: {
      firstname: "Please enter your firstname",
      lastname: "Please enter your lastname",
      password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      email: "Please enter a valid email address"
    },
  
    submitHandler: function(form) {
      form.submit();
    }
  });
});

</script>