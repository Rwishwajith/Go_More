
<?php
if(isset($_POST['submit']))
{
  
	$email=$_POST['email'];

}

$to = "ruchiraherath8@gmail.com";
$subject = "Reset Password: ;
$message = "GO MORE Reset Password. ".
" Here are the details:
"Email: $email;
$headers = "From: $email\n";
$headers .= "Reply-To: $email";
mail($to,$subject,$message);

if(mail($to,$subject,$message,$headers,$headers))
{
    echo "Your Email Has Been Sent ";
	header("Location: Thankyou.html");
}
else
	{
		header("Location: tryagain.html");
}
?>