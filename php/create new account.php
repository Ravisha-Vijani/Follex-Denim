
<?php
$servername = "localhost";
$Name = "root";
$Password = "";
$dbname="follexdenim";

$conn = new mysqli($servername,$Name, $Password,$dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$z=$_POST["username"];
$b=$_POST["password"];
$c=$_POST["confirm_password"];
$d=$_POST["email"];


//insert data

$sql = "INSERT INTO `registered_table` (`username`,`password`,`confirm_password`,`email`)
VALUES ('$z','$b','$c','$d')";


if ($conn->query($sql) === TRUE) {
    echo"registration Successfully...";
  
  //header("location:create new account.html"); // Redirecting to other page. 

} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


// $sql = "SELECT username,email,password1,telephone,address FROM `customer_details`";
// $result = $conn->query($sql);

// if ($result->num_rows > 0) {
//   // output data of each row
//   while($row = $result->fetch_assoc()) {
//     echo "<br>username:- " . $row["username"]."...email:- " . $row["email"]. " ...password:- " . $row["password1"]. 
//         "...telephone:-" . $row["telephone"]. "...address:-" . $row["address"].
//    "<br>";;
//   }
//  else {
//   echo "0 results";
// }

$conn->close();
?>



