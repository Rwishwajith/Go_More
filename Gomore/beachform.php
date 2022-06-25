<?php
$date=filter_input(INPUT_POST,'date');
$name=filter_input(INPUT_POST,'name');
$email=filter_input(INPUT_POST,'email');
$number=filter_input(INPUT_POST,'number');
$type=filter_input(INPUT_POST,'type');
$activity=filter_input(INPUT_POST,'activity');
$adult=filter_input(INPUT_POST,'adult');
$child=filter_input(INPUT_POST,'child');



$host="localhost";
$dbusername="root";
$dbpassword="";
$dbname="go_more";

$conn=new mysqli ($host,$dbusername, $dbpassword,$dbname);
if(mysqli_connect_error())
{
    die('Connect Error ('.mysqli_connect_errno().')'
    .mysqli_connect_error());
}
else{
    $sql="INSERT INTO  beach (date,name,email,number,type,activity,adult,child)
    values ('$date','$name','$email','$number','$type','$activity','$adult','$child')";
    if($conn->query($sql))
    {
        echo "New Record Is Inserted Successfully";
		header("Location: thankyouwild.html");
    }
    else{
        echo "Error :".$sql."<br> ".$conn->error;
    }
    $conn->close();
}

