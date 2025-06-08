<?php 
include 'header.php';
include 'db.php';
if(isset($_POST['login'])) {
  $email = $_POST['email'];
  $pass = sha1( $_POST['pass'] );
 
  // Check if the user exists in the database redirect to admin and if not show error message
  $sql = "SELECT * FROM users WHERE email = '$email' and password = '$pass'";
  $result = mysqli_query($conn, $sql);
  $user = mysqli_fetch_assoc($result);
 

  if($user) {

    $_SESSION['user_id'] = $user['id'];
    
    if($user['type'] == 'admin') {
      $_SESSION['is_admin'] = true;
      $_SESSION['is_cart'] = true;
      header("Location: admin/index.php");
    }else{
      $_SESSION['is_cart'] = true;
      header("Location:index.php");
    }

  }else {
    $error = "Invalid Credential";
  }

}



?>
<main>

    <section class="form-wrapper">
        <div class="content">

          <?php if(isset($error)) { ?>
            <div class="alert alert-danger">
              <?php echo $error ?>
            </div>
          <?php } ?>

          <h1>Login to your account</h1>
          <form action="" method="post">
            <div class="input-wrapper">
              <label>Email</label>
              <input type="email" placeholder="Email" name="email" required>
            </div>

            <div class="input-wrapper">
              <label>Password</label>
              <input type="password" placeholder="Password" name="pass" required>
            </div>

            <button name="login">Login</button>
          </form>
        </div>
    </section>

</main>
<?php include 'footer.php' ?>