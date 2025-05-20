<?php
        $pol = mysqli_connect("localhost", "root", "", "lunchito_boxito");
        $zap = "SELECT * FROM diety";
        $result = mysqli_query($pol, $zap);
        if ($result->num_rows > 0) {
            while($row = mysqli_fetch_row($result)) {
                echo '<div class="single-product">';
                echo '    <img src="images/' . $row[6] . '" class="product-image" alt="'.$row[6].'">';
                echo '    <div class="product-body">';
                echo '      <h5>' . $row[1] . '</h5>';
                echo '      <p><strong>Kaloryczność:</strong> ' . $row[3] . ' kcal</p>';
                echo '      <p>' . $row[4] . '</p>';
                echo '      <p><strong>Wege:</strong> ' . $row[5] ? 'Tak' : 'Nie' . '</p>';
                echo '      <p class="price"><strong>Cena:</strong> ' . $row[2] . ' zł</p>';
                echo '    </div>';
                echo '</div>';
            }
        } else {
            echo '<p>Brak diet w sklepie.</p>';
        }
        $pol->close();
        ?>