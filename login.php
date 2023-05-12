<?php



$servername = "localhost";
$Name = "root";
$Password = "";
$dbname="follexdenim";

$conn = new mysqli($servername,$Name, $Password,$dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
else{
    // include('loginform.php');  
    $username = $_POST['username'];  
    $password = $_POST['password'];  
      
        //to prevent from mysqli injection  
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($conn, $username);  
        $password = mysqli_real_escape_string($conn, $password);  
      
        $sql = "select * from `registered_table` where `username` = '$username' and `password` = '$password'";  
        $result = $conn->query($sql); 
        // $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        // $count = mysqli_num_rows($result);

        if ($result->num_rows > 0) {
            // echo "<h1><center> Login successful </center></h1>"; 
            header("location: order.html"); // Redirecting to other page. 
            exit();
            // return.false;
          } else {
            // echo "<h1> Login failed. Invalid username or password.</h1>";  

            // echo "Please Try Again.";
            header("location: login.html");
            exit();
          }
    }

    
$conn->close();
?>