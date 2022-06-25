


<?php
$name=$email=$phone=$arravi=$Departure=$adult=$child=$comment="";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = test_input($_POST["data_4"]);
    $email = test_input($_POST["data_5"]);
    $phone = test_input($_POST["data_6"]);
    $arravi = test_input($_POST["data_7"]);
    $Departure = test_input($_POST["data_8"]);
    $adult = test_input($_POST["data_9"]);
    $child = test_input($_POST["data_10"]);
    $comment = test_input($_POST["data_11"]);
  }
  function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
  
echo "<h2>Your Input:</h2>";
echo $name;
echo "<br>";
echo $email;
echo "<br>";
echo $phone;
echo "<br>";
echo $arravi;
echo "<br>";
echo $Departure;
echo "<br>";
echo $adult;
echo "<br>";
echo $child;
echo "<br>";
echo $comment;

/*$servername = "localhost";
$username = "root";
$password = "";
$dbname = "go_more";


$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO hotel (name,email,phone,arravi,Departure,adult ,child ,comment)
VALUES ('".$name."','".$email."', '".$phone."', '".$arravi."','".$Departure."','".$adult."','".$child."','".$comment."')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);*/





?>