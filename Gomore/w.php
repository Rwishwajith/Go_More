
<html>
<form method="post" action = "<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
   <section id="reserve" class="section section-reserve scrollspy">
    <div style="width: 100%;   border: #e21010 1px solid;">
    </div>
    <h3 style="text-align:center">Reserve A  <span class="teal-text">Hotel</span>
        </h3>
    <div style="text-align:center;size:24px">Hotel <span class="teal-text">Reservation</span>
    <div style="display: flex; padding-bottom: 18px;width : 450px;">
    
    </div><div style="padding-bottom: 18px;">Name<span style="color: red;"> *</span><br/>
    <input type="text" id="data_4" name="data_4" style="width : 450px;" class="form-control"/>
    </div>
    <div style="padding-bottom: 18px;">Email<span style="color: red;"> *</span><br/>
        <input type="text" id="data_5" name="data_5" style="width : 450px;" class="form-control"/>
        </div>
    <div style="padding-bottom: 18px;">Phone Number<span style="color: red;"> *</span><br/>
    <input type="text" id="data_6" name="data_6" style="width : 450px;" class="form-control"/>
    </div>
    <div style="padding-bottom: 18px;">Arrival date<span style="color: red;"> *</span><br/>
    <input type="text" id="data_7" name="data_7" style="width : 250px;" class="form-control"/>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/pikaday.min.js" type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/css/pikaday.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">new Pikaday({ field: document.getElementById('data_6') });</script>
    <div style="padding-bottom: 18px;">Departure date<span style="color: red;"> *</span><br/>
    <input type="text" id="data_8" name="data_8" style="width : 250px;" class="form-control"/>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/pikaday.min.js" type="text/javascript"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.4.0/css/pikaday.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">new Pikaday({ field: document.getElementById('data_7') });</script>
    <div style="padding-bottom: 18px;">Number of adults<span style="color: red;"> *</span><br/>
    <input type="number" id="data_9" name="data_9" style="width : 250px;" class="form-control"/>
    </div>
    <div style="padding-bottom: 18px;">Number of children<br/>
    <input type="number" id="data_10" name="data_10" style="width : 250px;" class="form-control"/>
    </div>
    <div style="padding-bottom: 18px;">Questions / Comments<br/>
    <textarea id="data_11" false name="data_11" style="width : 450px;" rows="6" class="form-control"></textarea>
    </div>
    <div style="padding-bottom: 18px;"><input name="skip_Submit" value="Submit" type="submit"/></div>
    </div>
    </section>
    </form>
    </html>
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