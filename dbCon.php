<?php
//Start Database Connection
$server="localhost";
$username="root";
$server_password="";
$db_name="giet_project";
$conn=mysqli_connect($server,$username,$server_password,$db_name);
if(!$conn)
{
    die("Connection failed: " . mysqli_connect_error());
}
else{
    //echo "Database connected success";
}

//End
?>
