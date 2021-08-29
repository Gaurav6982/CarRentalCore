<?php
    include_once('header.php')
?>
<main id="home_main">
    <div class="container-fluid p-0">
        <div class="banner">
            <img src="./assets/back.jpg" alt="Banner">
            <div class="content">
                <div class="">
                    <div class="col-md-6 offset-md-3 p-2 text-center">
                        <span class="tagline">Get Your Ride / Provide a Ride</span>
                    </div>
                    <div class="col-md-4 offset-md-4">
                        <div class="buttons d-flex justify-content-around">
                            <a class="btn btn-danger btn-big" href="./login_customers.php">Customer Login</a>
                            <a class="btn btn-danger btn-big" href="./login_agency.php">Agency Login</a>
                        </div>
                        <div class="d-flex justify-content-center my-2">
                            <a class="btn btn-danger btn-big" href="backend/customers/get_available_cars.php">Show Available Cars</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <div class="container">
        <h3 class="text-center"><span class="text-danger">Why</span> Our Platform? </h3>
        <div class="row">
            <div class="col-md-3">
                <div class="icon">
                <i class="fas fa-headphones"></i>
                </div>
                <div class="text">
                24x7 <br>
Customer Care
                </div>
            </div>
            <div class="col-md-3">
                <div class="icon">
                <i class="fas fa-thumbs-up"></i>
                </div>
                <div class="text">
                Customer <br>
Satisfaction
                </div>
            </div>
            <div class="col-md-3">
                <div class="icon">
                <i class="fas fa-percent"></i>
                </div>
                <div class="text">
                Excellent <br>
Car Hire Discounts
                </div>
            </div>
            <div class="col-md-3">
                <div class="icon">
                <i class="fas fa-star"></i>
                </div>
                <div class="text">
                Best Price <br>
Guarantee
                </div>
            </div>
            
        </div>
        </div>
    </div>
</main>
<?php 
    include_once('./footer.php')
?>