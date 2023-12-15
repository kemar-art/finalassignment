<?php 
      
    // if(!isset($_SERVER['HTTP_REFERER'])){
    //     // redirect them to your desired location
    //     header('location: http://localhost/freshcery/index.php');
    //     exit;
    // }

      
    try {
        //Local
        //host
        if (!defined('HOST')) define("HOST", "localhost");

        //dbname
        if (!defined('DBNAME')) define("DBNAME", "freshcery");

        //user
        if (!defined('USER')) define("USER", "root");

        //pass
        if (!defined('PASS')) define("PASS", "");

        //Remote
        //host
        //if (!defined('HOST')) define("HOST", "sql310.infinityfree.com");

        //dbname
        //if (!defined('DBNAME')) define("DBNAME", "if0_35096201_freshcery");

        //user
        //if (!defined('USER')) define("USER", "if0_35096201");

        //pass
       // if (!defined('PASS')) define("PASS", "59U3Z3aR0c94S");


        $conn = new PDO("mysql:host=".HOST.";dbname=".DBNAME.";", USER, PASS);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // if($conn == true) {
        //     echo "connected successfully";
        // } else {
        //     echo "error";
        // }

    } catch (PDOException $e) {
        echo $e->getMessage();
    }