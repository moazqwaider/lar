<?php include 'header.php';


include 'db.php';

if(!isset($_SESSION['is_cart'])) {
  header("Location: login.php");
}
else{
if(isset($_GET['id'])) {
    $productId = $_GET['id'];
    $sql = "SELECT * FROM books WHERE id=$productId";
    $result = mysqli_query($conn, $sql);
  
    if(mysqli_num_rows($result) > 0) {
        $product = mysqli_fetch_assoc($result);
        if(!in_array($product, $_SESSION['cart'])) {
            $_SESSION['cart'][] = $product;
        }
       
        header("Location: cart.php");
        exit();
    }
}

?>


<div class="row mt-4 text-center">
<?php foreach ($_SESSION['cart'] as $item){ 

    ?>
  <div class="card w-25 mt-5 mx-5">
    <form method="post" action="cart.php?id=<?php echo $item['title']; ?>">
      <img class="mt-3" width="350px" height="200px" src="upload/<?php echo $item['image']; ?>" alt="">
      <div class="card-body">
        <div class="d-flex justify-content-between">
          <h5 class="card-title"><?php echo $item['title']; ?></h5>
        </div>
        <p class="card-text">
          <?php echo $item['subtitle']; ?>
        </p>
        <a href="#" class="btn btn-dark w-100">Go somewhere</a>
      </div>
    </form>
  </div>
<?php } ?>
</div>

<?php }?>


     
   
       
     
   


         



<main style="height: 560px;">




</main>

<?php include 'footer.php'?>