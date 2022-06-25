<?php
$hotel=$name=$email=$phone=$location=$arravi=$Departure=$adult=$child=$comment="";
    $hotel = $_POST["hotel"];
    $name = $_POST["data_4"];
    $email =$_POST["data_5"];
    $phone =$_POST["data_6"];
	$location=$_POST["data_20"];
    $arravi =$_POST["data_7"];
    $Departure =$_POST["data_8"];
    $adult = $_POST["data_9"];
    $child = $_POST["data_10"];
    $comment = $_POST["data_11"];
  function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
echo $Departure;
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "go_more";


$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO hotel (hotel,name,email,phone,location,arravi,Departure,adult ,child ,comment)
VALUES ('".$hotel."','".$name."','".$email."', '".$phone."','".$location."', '".$arravi."','".$Departure."','".$adult."','".$child."','".$comment."')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
	header("Location: thankhotel.html");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);





?>