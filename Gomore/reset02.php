<?php
if(isset($_POST['submit']))
{
    $name=$_POST['name'];
	$email=$_POST['email'];
	
}

$to = "ruchiraherath8@gmail.com";
$subject = "Password Reset: $name";
$message = "Go More Password Reset Request. ".
" Here are the details:\n Name: $name \n ".
"Email: $email\n";
$headers = "From: $email\n";
$headers .= "Reply-To: $email";
mail($to,$subject,$message);

if(mail($to,$subject,$message,$headers,$headers))
{
	echo"We Got Your Request.We'll Send You The Reset Linked Email Soon";
}
else
	{
		echo"We Got Your Request.We'll Send You The Reset Linked Email Soon | Go More | Customer Care|";
}
?>