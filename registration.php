<?php
include "dbCon.php";
$name=$_POST['full_name'];
$uname=$_POST['uname'];
$upass=$_POST['upass'];
$contact_no=$_POST['contact_no'];
$email=$_POST['email_id'];
$gender=$_POST['gender'];
$district=$_POST['district'];
$dob=$_POST['dob'];
$lang_known="";
foreach($_POST['lang_known'] as $selected){
    $lang_known=$lang_known.",".$selected;
    }
$language=substr($lang_known,1,strlen($lang_known));
$address=$_POST['address'];
$query="insert into registration (name,username,password,contactno,emailid,gender,district,dob,language,address,status,cr_date) values('".$name."','".$uname."','".$upass."','".$contact_no."','".$email."','".$gender."','".$district."','".$dob."','".$language."','".$address."','active',curdate())";
if(mysqli_query($conn,$query))
{
    echo "You are successfully register in our portal";

}
else{
    echo "<font color=red>Sorry Dulicate email id not permit in this portal</font>";
}

//echo "You are successfully register in our portal";
//echo "Myname ".$name."is a regular student";
echo "<table><tr><td>Name</td><td>".$name."</td></tr></table>";
mysqli_close($conn);
?>


