<?php
session_start();
include 'dbCon.php';
$query="select * from registration";
$result= mysqli_query($conn, $query);
$count=0;
echo "Welcome  ".$_SESSION["name"];
?>

<table align="center" border="1">
    <tr>
        <th>Sl No</th><th>Name</th><th>Contact No</th><th>Address</th></tr>
    </tr>
<?php

if(mysqli_num_rows($result)>0)
{
    while($rows= mysqli_fetch_assoc($result))
    {
        $count++;
        ?>
<tr>
        <th><?php echo $count;?> </th><th><?php echo $rows["name"];?></th><th><?php echo $rows["contactno"];?></th><th><?php echo $rows["address"];?></th>
</tr>
    
       
   <?php }
}
 else 
    
 {
     echo " No records";
 }
?>

