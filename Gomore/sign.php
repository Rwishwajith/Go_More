<?php

$name=filter_input(INPUT_POST,'name');
$password=filter_input(INPUT_POST,'pass');
$email=filter_input(INPUT_POST,'email');
$country=filter_input(INPUT_POST,'country');


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
    $sql="INSERT INTO  sign (name,password,email,country)
    values ('$name','$password','$email','$country')";
    if($conn->query($sql))
    {
        echo "New Record Is Inserted Successfully";
		header("Location: page2.html");
    }
    else{
        echo "Error :".$sql."<br> ".$conn->error;
				
    }
    $conn->close();
}
