<?php 

$page_title='login';
if(isset($_SESSION['user_id'])){
    header("Location: index.php");
}
if(isset($_POST['login'])){
$email=htmlspecialchars($_POST['email']);
$password= sha1(htmlspecialchars($_POST['password']));
$conn=mysqli_connect('localhost','root','','westart_blog');
   $sql="SELECT *FROM users WHERE email='$email'AND password='$password'";
   $re=mysqli_query($conn,$sql);
   if(mysqli_num_rows($re)==1){
          $user=mysqli_fetch_assoc($re);
           $_SESSION['user_id'] = $user['id'];
          if($user['type']== 'admin'){
            $_SESSION['is_admin']=true;
            header("Location: admin/index.php");
          }else{
            header("Location: index.php");

          }
   }else{
      $msg = "User Not Found";
   }


}


include'header.php' ?>
        <!-- Page Header-->
        <header style="padding:100px 0" class="masthead" style="background-image: url('assets/img/contact-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="page-heading">
                            <h1>login</h1>
                          
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
        <main class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                       
                        <div class="my-5">
                        
                             <?php if(isset($msg)): ?>
                                <div class="alert alert-danger"> 
                                <?= $msg;?>         
                                </div>

                             <?php endif; ?>

                            <form id="contactForm" data-sb-form-api-token="API_TOKEN" method="post">
                                
                                <div class="form-floating">
                                    <input class="form-control" name="email" id="email" type="email" placeholder="Enter your email..." data-sb-validations="required,email" />
                                    <label for="email">Email address</label>
                                    <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                    <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                                </div>
                                <div class="form-floating">
                                    <input class="form-control" name="password" id="
                                    password" type="
                                    password" placeholder="password" data-sb-validations="required" />
                                    <label for="
                                    password">
                                    password</label>
                                    <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                                </div>
                              
                                </div>
                                <br />
                                <!-- Submit success message-->
                                <!---->
                                <!-- This is what your users will see when the form-->
                                <!-- has successfully submitted-->
                                <div class="d-none" id="submitSuccessMessage">
                                    <div class="text-center mb-3">
                                        <div class="fw-bolder">Form submission successful!</div>
                                        To activate this form, sign up at
                                        <br />
                                        <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                    </div>
                                </div>
                            
                                <!-- Submit Button-->
                                <button class="btn btn-primary text-uppercase " id="submitButton" name="login" type="submit">sign in</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
 <?php include 'footer.php' ?>