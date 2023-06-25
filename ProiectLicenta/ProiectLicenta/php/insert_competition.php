<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Retrieve the field values from the request
$male_firstname = $_POST['male_firstname'];
$male_lastname = $_POST['male_lastname'];
$male_id = $_POST['male_id'];
$female_firstname = $_POST['female_firstname'];
$female_lastname = $_POST['female_lastname'];
$female_id = $_POST['female_id'];
$country = $_POST['country'];
$category = $_POST['category'];
$email = $_POST['email'];

// Connect to the MySQL database
$host = 'roc.mysql.database.azure.com';
$username = 'anca';
$password = '04062016Aa';
$database = 'roc';

$connection = mysqli_init();
mysqli_real_connect($connection, $host, $username, $password, $database, 3306);

// Insert the field values into the database table
$query = "INSERT INTO competition VALUES ($male_firstname, $male_lastname, $male_id, $female_firstname, $female_lastname, $female_id, $country, $category, $email)";
$statement = mysqli_prepare($connection, $query);
mysqli_stmt_bind_param($statement, 'ss', $dynamicField1Value, $dynamicField2Value);
mysqli_stmt_execute($statement);
mysqli_stmt_close($statement);

// Close the database connection
mysqli_close($connection);

// Return a response if needed
?>
