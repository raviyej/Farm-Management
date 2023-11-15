<?php

if(!isset($_SESSION))
  {
    session_start();
  }

include 'connection.php';
$conn = Connect();

$V_ID = $_GET['id'];
$action = $_GET['action'];




$sql = "SELECT quantity FROM vegetables WHERE V_ID = ".$V_ID;

$result = mysqli_query($conn, $sql);


if($result){

  if($obj = mysqli_fetch_assoc($result)) {

    switch($action) {

      case "add":
      if($_SESSION['cart'][$V_ID]+1 <= $row["quantity"])
        $_SESSION['cart'][$V_ID]++;
      break;

      case "remove":
      $_SESSION['cart'][$V_ID]--;
      if($_SESSION['cart'][$V_ID] == 0)
        unset($_SESSION['cart'][$V_ID]);
        break;



    }
  }
}



header("location:cart.php");

?>
