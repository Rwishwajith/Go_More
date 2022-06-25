<?php
$name=filter_input(INPUT_POST,'name');
$email=filter_input(INPUT_POST,'email');
$date=filter_input(INPUT_POST,'date');
$city=filter_input(INPUT_POST,'city');
$pkg=filter_input(INPUT_POST,'pkg');
$level=filter_input(INPUT_POST,'level');
$lenght=filter_input(INPUT_POST,'trip');
$company=filter_input(INPUT_POST,'company');
$adult=filter_input(INPUT_POST,'adult');
$children=filter_input(INPUT_POST,'child');


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
    $sql="INSERT INTO  thrill (name,email,date,city,pkg,level,lenght,company,adult,children)
    values ('$name','$email','$date','$city','$pkg','$level','$lenght','$company','$adult','$children')";
    if($conn->query($sql))
    {
        echo "New Record Is Inserted Successfully";
		header("Location: thankyouthrill.html");
die();
		
    }
    else{
        echo "Error :".$sql."<br> ".$conn->error;
    }
    $conn->close();
}


?>
