<?php
session_start();
if(session_destroy()) // Destroying All Sessions
{
header("Location: farmerlogin.php"); // Redirecting To Home Page
}
?>