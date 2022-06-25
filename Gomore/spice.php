
<?php
$date=filter_input(INPUT_POST,'date');
$time=filter_input(INPUT_POST,'time');
$email=filter_input(INPUT_POST,'email');
$name=filter_input(INPUT_POST,'name');
$spice=filter_input(INPUT_POST,'activity');
$msg=filter_input(INPUT_POST,'msg');



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
    $sql="INSERT INTO  spice (date,time,email,name,spice,msg)
    values ('$date','$time','$email','$name','$spice','$msg')";
    if($conn->query($sql))
    {
        echo "New Record Is Inserted Successfully";
		header("Location: thankyouspice.html");
    }
    else{
        echo "Error :".$sql."<br> ".$conn->error;
    }
    $conn->close();
}


?>