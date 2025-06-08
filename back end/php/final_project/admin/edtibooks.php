<?php 
include 'header.php';
ob_start();
$conn = mysqli_connect('localhost', 'root', '', 'final_project2');
if(isset($_GET['id'])){
  $id=$_GET['id'];
  $sql ="SELECT * FROM books WHERE id=$id";
  $res=mysqli_query($conn ,$sql);
   $books=mysqli_fetch_assoc($res);

}else{
   header("Location:book.php");
}

if(isset($_POST['update'])) {
    $title=htmlspecialchars(trim($_POST['title']));
    $subtitle=htmlspecialchars(trim($_POST['subtitle']));
    $image=$_FILES['image'];
    $imgname=$books['image'];
if(!empty($image['name'])){
  unlink('../upload/.$imgname');
  $ex=pathinfo($image['name'],PATHINFO_EXTENSION);
  $imgname=str_replace(' ','-',strtolower($title)).time().'.'.$ex;
  
  move_uploaded_file($image['tmp_name'],'../upload/'.$imgname);
}

$conn = mysqli_connect('localhost', 'root', '', 'final_project2');

  $sql = "UPDATE books SET title='$title' , subtitle ='$subtitle', image= '$imgname' WHERE id=$id";
  if(mysqli_query($conn, $sql)) {
    header("Location: books.php");
  }
}


?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Book :<span><?= $books['title'] ?></span>
      
   </h1>
   
    <a href="books.php" class="btn btn-outline-dark w-25">All Book</a>
  </div>

  <form action="<?=$_SERVER['PHP_SELF'] ?>?id=<?=$id?>"method="post" enctype="multipart/form-data">
    <div class="mb-3">
      <label>Title</label>
      <input type="text" class="form-control" name="title" placeholder="Title" value="<?= $books['title'] ?>" />
    </div>
    <div class="mb-3">
      <label>Subtitle</label>
      <input type="text" class="form-control" name="subtitle" placeholder="Subtitle"
      value="<?= $books['subtitle'] ?>" />
    </div>
    <div class="mb-3">
      <label>Image</label>
      <input type="file" class="form-control" name="image" placeholder="Name">
     <img  width="100px" height="100px"  src="../upload/<?php echo $books['image'] ?>" alt="">
    </div>
    <button class="btn btn-success w-25" name="update">Update</button>
  </form>

</main>
<?php include 'footer.php' ?>