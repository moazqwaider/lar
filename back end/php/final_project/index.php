<?php include 'header.php';

ob_start();

?>
<main>

    <section class="hero">
        <div class="container">
            <div class="content">
                <h1 class="mb-4">Search about any Book you need</h1>
                <form action="" method="post">
                    <input name="text_search" type="text" class="form-control" auto-complete="off">
                    <button name="search"><i class="fa-solid fa-magnifying-glass">

                        </i></button>

                </form>

                <?php



                if (isset($_POST['search'])) {
                    $text_search = $_POST['text_search'];
                    $conn = mysqli_connect('localhost', 'root', '', 'final_project2');
                    $sql = "SELECT * FROM books WHERE title LIKE '%$text_search%'";
                    $result = mysqli_query($conn, $sql);

                    while ($book = mysqli_fetch_assoc($result)) {

                ?>


                        <div class="card mt-4" style="width: 18rem;">
                         
                            <img width="285px" height="180px" src="upload/<?php echo $book['image'] ?>" alt="">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $book['title'] ?></h5>
                                <p class="card-text"> <?php echo $book['subtitle']  ?></p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                           
                           
                <?php mysqli_close($conn);
                    }
                } ?>









                <div class="row mt-4 text-center">
                    <div class="col-md-4">
                        <div class="item">
                            <i class="fa-solid fa-book fa-2x"></i>
                            <h3>3</h3>
                            <p>Books</p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="item">
                            <i class="fa-solid fa-book fa-2x"></i>
                            <h3>3</h3>
                            <p>Books</p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="item">
                            <i class="fa-solid fa-book fa-2x"></i>
                            <h3>3</h3>
                            <p>Books</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about text-center py-5">
        <div class="container">
            <h2>About Our Library</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero ipsa, fugiat a sequi officia molestias dolor labore architecto tenetur eius quidem impedit neque voluptatum mollitia vitae. Esse ducimus consequatur enim!</p>
        </div>
    </section>

    <section class="categories bg-light py-5 text-center">
        <div class="container">
            <h2 class="mb-4">Explore our latest Categories</h2>

            <div class="row justify-content-center">
                <div class="col-md-3">
                    <a href="" class="item card p-5">
                        Action
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="" class="item card p-5">
                        Action
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="" class="item card p-5">
                        Action
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section class="books py-5">
        <div class="container">
            <h2 class="mb-4 text-center">Explore our latest books</h2>

            <div class="row justify-content-center">

                <?php $conn = mysqli_connect('localhost', 'root', '', 'final_project2');
                $sql = "SELECT * FROM books";
                $result = mysqli_query($conn, $sql);

                while ($books = mysqli_fetch_assoc($result)) {
                ?>
                    <div class="col-md-3">
                        <div class="card">
                        <form method="post" action="cart.php ?id=<?php echo $books['id'] ?>">

                            <img width="305px" src="upload/<?php echo $books['image'] ?>" alt="">
                            <div class="card-body">

                                 <div class="d-flex justify-content-between">
                                      <h5 class="card-title"><?php echo $books['title'] ?></h5>

                                      <a  href="cart.php?id=<?php echo $books['id'] ?>">

                                      <svg  name="addcart" xmlns="http://www.w3.org/2000/svg" width="16" height="16"  fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1                               0-1h5v-5A.5.5 0 0 1 8 2Z"   />
                                    </svg>
                                      </a>
                                  
                                 </div>
                              
                                <p class="card-text">

                                    <?php echo $books['subtitle']  ?>
                                </p>
                                <a href="#" class="btn btn-dark w-100">Go somewhere</a>


                            </div>
                        </div>
                        </form>
                    </div>
                <?php } ?>

            </div>
        </div>
    </section>

</main>

<?php include 'footer.php' ?>