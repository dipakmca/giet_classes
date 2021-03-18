<?php
session_start();
include 'dbCon.php';
$uname=$_POST['auname'];
$upass=$_POST['aupass'];
$query="select * from admin where username='".$uname."' and password='".$upass."'";
//echo $query;
$result= mysqli_query($conn, $query);
if(mysqli_num_rows($result)>0)
{
     while($rows= mysqli_fetch_assoc($result))
    {
    $_SESSION["uname"]=$uname;
    $_SESSION["name"]=$rows['name'];
    }
    header("Location: reg_student_details.php");
}
 else 
    
 {
     echo "<a href='index.html'>Login Again</a>";
 }
?>

