<?php 
include 'header.php';

if(isset($_GET['del'])) {
  $id = $_GET['del'];
  $sql = "DELETE FROM books WHERE id = '$id'";

  if(mysqli_query($conn, $sql)) {
    header("Location: books.php");
  }
}

?>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-mdcategories-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">books</h1>
        <a href="addbooks.php" class="btn btn-outline-dark w-25">Add New Book</a>
      </div>

      <table class="table table-bordered table-hover table-striped">
        <tr class="table-dark">
          <th>ID</th>
          <th>Image</th>
          <th>Title</th>
           <th>Subtitle</th>
           <th>Atcion</th>
        </tr>
        <?php 
          $sql = "SELECT * FROM books";
          $result = mysqli_query($conn, $sql);
          while ($row = mysqli_fetch_assoc($result)) {
        ?>

        <tr>
          <td><?php echo $row['id'] ?></td>
          <td class="flex justify-content-center align-items-center " >  <img  width="100px" height="100px"  src="../upload/<?php echo $row['image'] ?>" alt=""></td>
          <td><?php echo $row['title'] ?></td>
          <td><?php echo $row['subtitle'] ?></td>
          <td>
          
          <a href="edtibooks.php?id=<?=$row['id']?>"class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></a>
            <a onclick="return confirm('Are you sure?!')" href="books.php?del=<?php echo $row['id'] ?>" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
         
          </td>
        </tr>
        
        <?php } ?>

      </table>

    </main>
<?php include 'footer.php' ?>