<?php include 'header.php';
ob_start();
$conn = mysqli_connect('localhost', 'root', '', 'westart_blog');

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM posts WHERE id=$id";
    $res = mysqli_query($conn, $sql);
    $post = mysqli_fetch_assoc($res);
} else {
    header("Location:posts.php");
}

if (isset($_POST['update'])) {
    $title = htmlspecialchars(trim($_POST['title']));
    $subtitle = htmlspecialchars(trim($_POST['subtitle']));
    $image = $_FILES['image'];
    $details = $_POST['details'];
    $imgname = $post['image'];
    if (!empty($image['name'])) {
        unlink('../upload/.$imgname');
        $ex = pathinfo($image['name'], PATHINFO_EXTENSION);
        $imgname = str_replace(' ', '-', strtolower($title)) . time() . '.' . $ex;

        move_uploaded_file($image['tmp_name'], '../upload/' . $imgname);
    }


    /// لمنع السكربت 
    $details = str_replace('<script>', '', $details);
    $details = str_replace('</script>', '', $details);

    $sql = "UPDATE  posts SET title='$title', subtitle='$subtitle',details='$details',image='$imgname' WHERE id=$id";
    if (mysqli_query($conn, $sql)) {
        header("Location: posts.php");
    }
}

?>
<div class="container-fluid">
    <div class="row ">

        <?php include 'sidebar.php' ?>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Edit Post :<span><?= $post['title'] ?></span></h2>
                <a class="btn btn-outline-dark" href="posts.php"> ALL Posts</a>
            </div>
            <form action="<?= $_SERVER['PHP_SELF'] ?>?id=<?= $id ?>" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label>Title</label>
                    <input type="text" placeholder="Title" class="form-control" name="title" value="<?= $post['title'] ?>">
                </div>
                <div class="mb-3">
                    <label>Subtitle</label>
                    <input type="text" placeholder="Subtitle" class="form-control" name="subtitle" value="<?= $post['subtitle'] ?>">
                </div>
                <div class="mb-3">
                    <label>Image</label>
                    <input type="file" placeholder="image" class="form-control" name="image">
                    <img width="80px" src="../upload/<?= $post['image'] ?>" alt="">



                </div>
                <div class="mb-3">
                    <label>Details</label>
                    <textarea placeholder="Details" class="form-control" name="details" rows="5">
                     <?= $post['details'] ?>
                     
                    </textarea>
                </div class="mb-3">
                <button name="update" class="btn btn-success px-5 ">Update</button>
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
        plugins: ['code'],
    });
</script>

<script>
    function deletePost(e) {
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
                window.location.href = e.target.closest('a').href;
            }
        })
    }
</script>

</html>