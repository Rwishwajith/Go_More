
<?php
$name = $_POST["name"];
    $email =$_POST["email"];
    $password =$_POST["password"];
    $country =$_POST["country"];
    $number =$_POST["number"];

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
    
$sql = "INSERT INTO login (name,email,password,country,number)
VALUES ('$name','$email','$password','$country','$number')";
    if($conn->query($sql))
    {
        echo "New Record Is Inserted Successfully";
		header("Location: welcome.html");
die();
		
    }
    else{
        echo "Error :".$sql."<br> ".$conn->error;
    }
    $conn->close();
}


?>



