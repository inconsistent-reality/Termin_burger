<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style/style.css" media="screen and (min-device-width: 800px)">
    <link rel="stylesheet" href="../style/phonestyle.css" media="screen and (max-device-width: 800px)">
</head>
<body>
    
<div class="meny">
        <a class="orange" href="/index.php">Hjem</a>
        <a class="orange" href="Meny.php">Meny</a>
        <a class="orange" href="Anmeldelse.php">Anmeldelse</a>
        <a class="orange" href="bord.php">Bord</a>
        <a class="orange" href="FAQ.php">FAQ</a>
        <a class="orange" href="tickting/ticket.php">ticket</a>
        <a class="orange" href="BB.php">Bygg</a>
        <a class="darkorange" href="mal.php">Mal</a>

        <?php if (isset($_SESSION['admin']) && $_SESSION['admin'] === 'Admin') { ?>
                <a class="orange" href="tickting/brukerS.php">støtte</a>
                <a class="orange" href="showBB.PHP">se Bygg</a>
        <?php } ?>

        <?php
        if ($_SESSION) {
            echo '<a class="orange" href="passord.php">passord</a>';

            echo '<a class="orange" href="/login/logout.php">logout</a>';
        } else {
            echo ' <a class="orange" href="/login/inLOG.php">login</a>';
        }
        ?>
    </div>
</body>
</html>