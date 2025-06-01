<?php
$pol = mysqli_connect("localhost", "root", "", "lunchito_boxito");

$imie = $_POST['customer-name'] ?? '';
$email = $_POST['customer-email'] ?? '';
$tresc = $_POST['customer-message'] ?? '';

$sql = "INSERT INTO kontakt (imie, email, tresc) VALUES ('$imie', '$email', '$tresc')";
    
if (mysqli_query($pol, $sql)) {
        header("Location: contact.html"); // Przekierowanie po wysłaniu
        exit();
    } else

$pol->close();
?>