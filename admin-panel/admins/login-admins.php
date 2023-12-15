<?php require "../layouts/header.php"; ?>
<?php require "../../config/config.php"; ?>
<?php 

  if(isset($_SESSION['adminname'])) {
      
      echo "<script> window.location.href='".ADMINURL."'; </script>";

  }

  if(isset($_POST['submit'])) {

      if(empty($_POST['email']) OR empty($_POST['password'])
      ) {

          echo "<script>alert('one or more inputs are empty')</script>";

      } else {

          $email = $_POST['email'];
          $password = $_POST['password'];

          //query

          $login = $conn->query("SELECT * FROM admins WHERE email='$email'");
          $login->execute();

          $fetch = $login->fetch(PDO::FETCH_ASSOC);

          //validate email

          if($login->rowCount() > 0) {

            //validate pass

            if(password_verify($password, $fetch['mypassword'])) {

              $_SESSION['adminname'] = $fetch['adminname'];
              $_SESSION['email'] = $fetch['email'];
              $_SESSION['admin_id'] = $fetch['id'];


              echo "<script> window.location.href='".ADMINURL."'; </script>";

            } else {
              
              echo "<script>alert('email or password is wrong')</script>";

            }

          } else {
              echo "<script>alert('email or password is wrong')</script>";

          }

      }
  }


?>

<style>
    body {
      background-color: #f8f9fa;
    }

    .login-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .card {
      width: 400px;
    }
  </style>


      <div class="login-container">
  <div class="card">
    <div class="card-body">
      <h1 class="card-title text-center mt-4"><strong>Admin Panel</strong></h1>
      <form method="POST" class="p-4" action="login-admins.php">
        <!-- Email input -->
        <div class="form-group">
          <label for="form2Example1">Email</label>
          <input type="text" name="email" id="form2Example1" class="form-control"  required />
        </div>

        <!-- Password input -->
        <div class="form-group">
          <label for="form2Example2">Password</label>
          <input type="password" name="password" id="form2Example2" class="form-control"  required />
        </div>

        <!-- Submit button -->
        <button type="submit" name="submit" class="btn btn-primary btn-block">Login</button>
      </form>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<?php require "../layouts/footer.php"; ?>
