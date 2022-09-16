<?php
    $quantidade = $_POST['quantidade'];

    $total = $quantidade - 1;

    echo "<html><form method = 'POST'action = 'pg3.php'>";
    echo"Digite os valores dos indices:";
    echo "<br>";
    for($q = 0; $q <= $total; $q++){
        echo "<html> <input type='number' name = 'numero[]'> <br></html>";
    }
    echo "<input type='submit' name ='enviar'>";
    echo "</form></html>";
    
?>