<html>
<?php
$name=filter_input(INPUT_POST,'name');
$email=filter_input(INPUT_POST,'email');
$address=filter_input(INPUT_POST,'address');
$city=filter_input(INPUT_POST,'city');
$state=filter_input(INPUT_POST,'state');
$zip=filter_input(INPUT_POST,'zip');
$cname=filter_input(INPUT_POST,'cardname');
$cnum=filter_input(INPUT_POST,'cardnumber');
$month=filter_input(INPUT_POST,'expmonth');
$year=filter_input(INPUT_POST,'expyear');
$cvv=filter_input(INPUT_POST,'cvv');

$host="localhost";
$dbusername="root";
$dbpassword="";
$dbname="go_more";

$conn=new mysqli ($host,$dbusername,$dbpassword,$dbname);
if(mysqli_connect_error())
{
    die('Connect Error ('.mysqli_connect_errno().')'
    .mysqli_connect_error());
}
else{
    $sql="INSERT INTO  shopping (name,email,address,city,state,zip,cname,cnum,month,year,cvv)
    values ('$name','$email','$address','$city','$state','$zip','$cname','$cnum','$month','$year','$cvv')";
    if($conn->query($sql))
    {
        echo "New Record Is Inserted Successfully";
		header("Location: Thankyou.html");
die();
		
    }
    else{
        echo "Error :".$sql."<br> ".$conn->error;
    }
    $conn->close();
}


?>
