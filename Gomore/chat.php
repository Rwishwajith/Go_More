
<?php
if(isset($_POST['submit']))
{
    $name=$_POST['name'];
	$email=$_POST['email'];
	$msg=$_POST['msg'];
}

$to = "ruchiraherath8@gmail.com";
$subject = "Contact form submission: $name";
$message = "GO MORE new message. ".
" Here are the details:\n Name: $name \n ".
"Email: $email\n Message \n $msg";
$headers = "From: $email\n";
$headers .= "Reply-To: $email";
mail($to,$subject,$message);

if(mail($to,$subject,$message,$headers,$headers))
{
	header("Location: Thankyou.html");
}
else
	{
		header("Location: tryagain.html");
}
?>