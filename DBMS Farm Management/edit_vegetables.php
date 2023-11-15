<?php
include('session_m.php');

if(!isset($login_session)){
header('Location: farmerlogin.php'); 
}

?>
<!DOCTYPE html>
<html>

  <head>
    <title> farmer Login | Farm Culture </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/edit_vegetables.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript">
    function display_alert()
    {
      alert("Data Updated Successfully...!!!");
    }
  </script>

  <body>

  
    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
 
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Le Cafe'</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $login_session; ?> </a></li>
            <li class="active"> <a href="farmerlogin.php">FARMER CONTROL PANEL</a></li>
            <li><a href="logout_f.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
        </div>

      </div>
    </nav>




<div class="container">
    <div class="jumbotron">
     <h1>Hello farmer! </h1>
     <p>maintain all your farm from here</p>

    </div>
    </div>

<div class="container">
    <div class="container">
    	<div class="col">
    		
    	</div>
    </div>

    
    	<div class="col-xs-3" style="text-align: center;">

    	<div class="list-group">
    		<a href="myfarm.php" class="list-group-item ">My Farm</a>
    		<a href="view_vegetables.php" class="list-group-item ">View Vegetables</a>
    		<a href="add_vegetables.php" class="list-group-item ">Add Vegetables</a>
    		<a href="edit_vegetables.php" class="list-group-item active">Edit Vegetables</a>
    		<a href="delete_vegetables.php" class="list-group-item ">Delete Vegetables</a>
        <a href="view_order_details.php" class="list-group-item ">View Order Details</a>
    	</div>
    </div>
    


    
    

<div class="col-xs-3">

  <div class="form-area" style="padding: 10px 10px 110px 10px; ">
  
    <div style="text-align: center;">
      <h3>Click On Menu <br><br></h3>
    </div>
    <?php
   
 

    if (isset($_GET['submit'])) {
    $F_ID = $_GET['dfid'];
    $name = $_GET['dname'];
    $price = $_GET['dprice'];
    $description = $_GET['ddescription'];


    $query = mysqli_query($conn, "UPDATE vegetables set
    name='$name', price='$price',
    description='$description' where V_ID='$V_ID'");
    }
    $query = mysqli_query($conn, "SELECT * FROM vegetables v WHERE v.F_ID IN (SELECT f.F_ID FROM FARM f WHERE f.M_ID='$user_check') ORDER BY V_ID");
    while ($row = mysqli_fetch_array($query)) {

      ?>

      <div class="list-group" style="text-align: center;">
        <?php
      echo "<b><a href='edit_vegetables.php?update= {$row['V_ID']}'>{$row['name']}</a></b>";  
        ?>
      </div>


    <?php
    }
    ?>
    

    <?php
    if (isset($_GET['update'])) {
    $update = $_GET['update'];
    $query1 = mysqli_query($conn, "SELECT * FROM vegetables WHERE V_ID=$update");
    while ($row1 = mysqli_fetch_array($query1)) {

    ?>
</div>
</div>



<div class="container">
<div class="col-md-6">
 <div class="form-area" style="padding: 0px 100px 100px 100px;">
        <form action="edit_vegetables.php" method="GET">
        <br style="clear: both">
          <h3 style="margin-bottom: 25px; text-align: center; font-size: 30px;"> EDIT YOUR VEGETABLE HERE </h3>

          <div class="form-group">
            <input class='input' type='hidden' name="dvid" value=<?php echo $row1['V_ID'];  ?> />
          </div>

          <div class="form-group">
            <label for="username"><span class="text-danger" style="margin-right: 5px;">*</span> Vegetable: </label>
            <input type="text" class="form-control" id="dname" name="dname" value=<?php echo $row1['name'];  ?> placeholder="Your Vegetable" required="">
          </div>     

          <div class="form-group">
            <label for="username"><span class="text-danger" style="margin-right: 5px;">*</span> Vegetable Price: </label>
            <input type="text" class="form-control" id="dprice" name="dprice" value=<?php echo $row1['price'];  ?> placeholder="Your vegetable price (INR)" required="">
          </div>

          <div class="form-group">
            <label for="username"><span class="text-danger" style="margin-right: 5px;">*</span> Vegetable Description: </label>
            <input type="text" class="form-control" id="ddescription" name="ddescription" value=<?php echo $row1['description'];  ?> placeholder="Your Vegetable Description" required="">
          </div>

          <div class="form-group">
          <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right" onclick="display_alert()" value="Display alert box" > Update </button>    
      </div>
        </form>


    <?php
}
}


  ?>
      
  </div>




</div>


<?php
mysqli_close($conn);
?>
</div>
</div>

  </body>
<br>
</html>