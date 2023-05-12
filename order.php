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
$b=$_POST["product_name"];
$d=$_POST["quantity"];
$c=$_POST["contact_nu"];


//insert data

$sql = "INSERT INTO `order_table` (`username`,`product_name`,`quantity`,`contact_nu`)
VALUES ('$z','$b','$d','$c')";


if ($conn->query($sql) === TRUE) {
  echo "Your oder successfully";
  //header("location:ordertaken.html"); // Redirecting to other page. 


} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


// $sql = "SELECT username,email,password1,order_type,quantity FROM `order_details`";
// $result = $conn->query($sql);

// if ($result->num_rows > 0) {
//   // output data of each row
//   while($row = $result->fetch_assoc()) { 
//     echo "<br>username:- " . $row["username"]."...email:- " . $row["email"]. " ...password:- " . $row["password1"]. 
//         "...order_type:-" . $row["order_type"]. "...quantity:-" . $row["quantity"].
//    "<br>";;
//   }
// } else {
//   echo "0 results";
// }

$conn->close();
?>