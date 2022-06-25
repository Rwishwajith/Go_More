<?php
if(isset($_POST['submit']))
{
    
	$email=$_POST['email'];
	
}

$to = "ruchiraherath8@gmail.com";
$subject = "Contact form submission:";
$message = "GO MORE new message. ".
" Here are the details:\n".
"Email: $email";
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