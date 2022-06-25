<?php

$name=filter_input(INPUT_POST,'name');
$password=filter_input(INPUT_POST,'pass');



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
$sql = "SELECT * FROM sign WHERE name = '$name'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
  $p2=$row["password"];
    }
	if ($p2==$password)
	{
		header("Location: page2.html");
	}
	else 
	{
		header("Location: tryagain.html");
	}
} else {
		header("Location: tryagain.html");
}

$conn->close();