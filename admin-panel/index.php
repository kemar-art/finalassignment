<?php require "layouts/header.php"; ?>
<?php require "../config/config.php"; ?>
<?php 


  if(!isset($_SESSION['adminname'])) {
        
    echo "<script> window.location.href='".ADMINURL."/admins/login-admins.php'; </script>";

  }

  //products
  $products = $conn->query("SELECT COUNT(*) as products_num FROM products");
  $products->execute();

  $num_products = $products->fetch(PDO::FETCH_OBJ);

  //orders
  $orders = $conn->query("SELECT COUNT(*) as orders_num FROM orders");
  $orders->execute();

  $num_orders = $orders->fetch(PDO::FETCH_OBJ);

  //categories
  $categories = $conn->query("SELECT COUNT(*) as categories_num FROM categories");
  $categories->execute();

  $num_categories = $categories->fetch(PDO::FETCH_OBJ);

  //admins
  $admins = $conn->query("SELECT COUNT(*) as admins_num FROM admins");
  $admins->execute();

  $num_admins = $admins->fetch(PDO::FETCH_OBJ);



?>
<style>
    body {
      background-color: #f8f9fa;
    }

    .card {
      border: none;
      border-radius: 15px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .card-title {
      color: white; /* Default text color for most cards */
    }

    .card-text {
      color: white; /* Default text color for most cards */
    }

    /* Add your custom colors as needed */
    .card-products {
      background-color: #007bff; /* Blue */
    }

    .card-orders {
      background-color: #28a745; /* Green */
    }

    .card-categories {
      background-color: #ffc107; /* Yellow */
    }

    .card-admins {
      background-color: #dc3545; /* Red */
    }
  </style>




            
            <div class="container mt-5">
  <div class="row">
    <div class="col-md-3">
      <div class="card card-products">
        <div class="card-body">
          <h5 class="card-title">Products</h5>
          <p class="card-text">Number of products: <?php echo $num_products->products_num; ?></p>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card card-orders">
        <div class="card-body">
          <h5 class="card-title">Orders</h5>
          <p class="card-text">Number of orders: <?php echo $num_orders->orders_num; ?></p>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card card-categories">
        <div class="card-body">
          <h5 class="card-title" style="color: black;">Categories</h5>
          <p class="card-text" style="color: black;">Number of categories: <?php echo $num_categories->categories_num; ?></p>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card card-admins">
        <div class="card-body">
          <h5 class="card-title">Admins</h5>
          <p class="card-text">Number of admins: <?php echo $num_admins->admins_num; ?></p>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<?php require "layouts/footer.php"; ?>
