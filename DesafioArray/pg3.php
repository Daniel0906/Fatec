<?php
    $numero = $_POST['numero'];
  
    $max = sizeof($numero);
    $total = $max - 1;

    for($i = 0; $i<= $total; $i ++){
        echo "Posicao[".$i."] = ". $numero[$i];
        echo "<br>";
    }
    ?>
    <html>
        <p> <a href="pg1.php">Voltar</a> </p>
    </html>