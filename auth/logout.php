<?php 

    session_start();
    session_unset();
    session_destroy();

    echo "<script> window.location.href='http://localhost/freshcery'; </script>";
    //echo "<script> window.location.href='http://finalassignmnet.22web.org/freshcery'; </script>";
