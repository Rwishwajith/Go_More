<div class="wildform">
<?php
$date=filter_input(INPUT_POST,'date');
$name=filter_input(INPUT_POST,'name');
$email=filter_input(INPUT_POST,'email');
$number=filter_input(INPUT_POST,'number');
$city=filter_input(INPUT_POST,'list1');
$type=filter_input(INPUT_POST,'list2');
$adult=filter_input(INPUT_POST,'adult');
$child=filter_input(INPUT_POST,'child');
$vehicle=filter_input(INPUT_POST,'car');


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
    $sql="INSERT INTO  wild (date,name,email,number,city,type,adult,child,vehicle)
    values ('$date','$name','$email','$number','$city','$type','$adult','$child','$vehicle')";
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


?>
</div>