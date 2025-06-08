<?php include 'header.php' ;
ob_start();
$conn = mysqli_connect('localhost', 'root', '', 'westart_blog');
 

if(isset($_POST['add'])){
$title=htmlspecialchars(trim($_POST['title']));
$subtitle=htmlspecialchars(trim($_POST['subtitle']));
$image=$_FILES['image'];
$details=$_POST['details'];
$ex=pathinfo($image['name'],PATHINFO_EXTENSION);
$imgname=str_replace(' ','-',strtolower($title)).time().'.'.$ex;

move_uploaded_file($image['tmp_name'],'../upload/'.$imgname);
/// لمنع السكربت 
$details =str_replace('<script>' ,'',$details);
$details =str_replace('</script>' ,'',$details);

$sql="INSERT INTO posts (title,subtitle,details,image) VALUES ('$title','$subtitle','$details','$imgname')";
if(mysqli_query($conn,$sql)){
    header("Location: posts.php");

}




}







?>
<div class="container-fluid">
    <div class="row ">
        
        <?php include 'sidebar.php' ?>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

          <div class="d-flex justify-content-between align-items-center" >
            <h2>Add New Post</h2>
            <a class="btn btn-outline-dark" href="posts.php"> ALL Posts</a>
            </div>
             <form action="<?=$_SERVER['PHP_SELF'] ?>"method="post" enctype="multipart/form-data">
               <div class="mb-3">
                     <label>Title</label>
                     <input type="text" placeholder="Title"
                     class="form-control"
                     name="title"> 
               </div>
               <div class="mb-3">
                     <label>Subtitle</label>
                     <input type="text" placeholder="Subtitle"
                     class="form-control"
                     name="subtitle"> 
               </div>
               <div class="mb-3">
                     <label>Image</label>
                     <input type="file" placeholder="image"
                     class="form-control"
                     name="image"> 
               </div>
               <div class="mb-3">
                     <label>Details</label>
                     <textarea placeholder="Details"
                     class="form-control"
                     name="details" rows="5"></textarea> 
               </div class="mb-3">
                 <button name="add" class="btn btn-success px-5 ">Add</button>
             </form>
        </main>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script>
    window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')
</script>
<script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.9.0/dist/feather.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.min.js"></script>
<script src="https://getbootstrap.com/docs/4.4/examples/dashboard/dashboard.js"></script>
</body>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

<script>
  tinymce.init({
    selector: 'textarea',
    plugins:['code'],
  });
</script>

<script>
  function deletePost(e){
    e.preventDefault();
  
    Swal.fire({
  title: 'Are you sure?',
  text: "You won't be able to revert this!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!'
}).then((result) => {
  if (result.isConfirmed) {
       window.location.href=e.target.closest('a').href;
  }
})
  }
  
</script>

</html>