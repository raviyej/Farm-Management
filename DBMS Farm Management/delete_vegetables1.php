<?php




include('session_m.php');

if(!isset($login_session)){
header('Location: farmerlogin.php'); 
}




$cheks = implode("','", $_POST['checkbox']);
$sql = "UPDATE VEGETABLES SET `options` = 'DISABLE' WHERE V_ID in ('$cheks')";
$result = mysqli_query($conn,$sql) or die(mysqli_error($conn));

header('Location: delete_vegetables.php');
$conn->close();


?>