<?php
$pol = mysqli_connect("localhost", "root", "", "lunchito_boxito");

$conditions = [];

if (isset($_GET['wege']) && $_GET['wege'] == "1") {
    $conditions[] = "wege = 1";
}
if (isset($_GET['meat']) && $_GET['meat'] == "1") {
    $conditions[] = "wege = 0";
}
if (empty($conditions)) {
    echo '<p>Brak dopasowanych diet</p>';
    exit;
}

$whereClause = "WHERE " . implode(" OR ", $conditions);

$zap = "SELECT * FROM diety $whereClause";
$result = mysqli_query($pol, $zap);

if ($result && $result->num_rows > 0) {
    while($row = mysqli_fetch_row($result)) {
        echo '<div class="single-product">';
        echo '    <img src="images/' . $row[6] . '" class="product-image" alt="'.$row[6].'">';
        echo '    <div class="product-body">';
        echo '      <h3>' . $row[1] . '</h3>';
        echo '      <p>' . $row[4] . '</p>';
        echo '      <p><strong>Wege:</strong> ' . ($row[5] ? 'Tak' : 'Nie') . '</p>';
        echo '      <p><strong>Kaloryczność:</strong> ' . $row[3] . ' kcal</p>';
        echo '      <p class="price"><strong>Cena:</strong> ' . $row[2] . ' zł</p>';
        echo '    </div>';
        echo '</div>';
    }
} else {
    echo '<p>Brak dopasowanych diet.</p>';
}

$pol->close();
?>
