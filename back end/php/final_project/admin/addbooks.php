<?php 
include 'header.php';

if(isset($_POST['add'])) {
    $title=htmlspecialchars(trim($_POST['title']));
    $subtitle=htmlspecialchars(trim($_POST['subtitle']));
    $image=$_FILES['image'];
$ex=pathinfo($image['name'],PATHINFO_EXTENSION);
$imgname=str_replace(' ','-',strtolower($title)).time().'.'.$ex;

move_uploaded_file($image['tmp_name'],'../upload/'.$imgname);
  $conn = mysqli_connect('localhost', 'root', '', 'final_project2');
  $sql = "INSERT INTO books (title, subtitle, image) VALUES ('$title', '$subtitle', '$imgname')";
  if(mysqli_query($conn, $sql)) {
    header("Location: books.php");
  }
}


?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Add Book</h1>
    <a href="books.php" class="btn btn-outline-dark w-25">All Book</a>
  </div>

  <form action="<?=$_SERVER['PHP_SELF'] ?>"method="post" enctype="multipart/form-data">
    <div class="mb-3">
      <label>Title</label>
      <input type="text" class="form-control" name="title" placeholder="Title" />
    </div>
    <div class="mb-3">
      <label>Subtitle</label>
      <input type="text" class="form-control" name="subtitle" placeholder="Subtitle" />
    </div>
    <div class="mb-3">
      <label>Image</label>
      <input type="file" class="form-control" name="image" placeholder="Name" />
    </div>
    <button class="btn btn-success w-25" name="add">Add</button>
  </form>

</main>
<?php include 'footer.php' ?>