<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../style/style.css" media="screen and (min-device-width: 800px)">
    <link rel="stylesheet" href="../style/phonestyle.css" media="screen and (max-device-width: 800px)">
</head>

<body>

    <div class="meny">
        <a class="orange" href="../index.php">Hjem</a>
        <a class="orange" href="Meny.php">Meny</a>
        <a class="orange" href="Anmeldelse.php">Anmeldelse</a>
                <a class="orange" href="bord.php">Bord</a>
        <a class="darkorange" href="FAQ.php">FAQ</a>
        <a class="orange" href="tickting/ticket.php">ticket</a>
        <a class="orange" href="BB.php">Bygg</a>
                <?php if (isset($_SESSION['admin']) && $_SESSION['admin'] === 'Admin') {?>
                <a class="orange" href="tickting/brukerS.php">støtte</a>
        <?php } ?>
        <a class="orange" href="showBB.PHP">se Bygg</a>

        <?php
        if ($_SESSION) {
            echo '<a class="orange" href="passord.php">passord</a>';

            echo '<a class="orange" href="../login/logout.php">logout</a>';
        } else {
            echo ' <a class="orange" href="../login/inLOG.php">login</a>';
        }
        ?>
    </div>
    <h1 class="overskrift">
        FAQ
    </h1>
    <div class="line"></div>
    <br>



</div>
<DIV class="faq-box">

    <button class="accordion">Hvordan reservere bord</button>
<div class="panel">
  <p>Du trykker på "Bord" i menyen og velger et ledig bord og tidspunkt, etterfulgt
     av navn og e-post. Se gjerne denne videoen som forklarer hvordan du gjør det: https://www.youtube.com/watch?v=xvFZjo5PgG0</p>
</div>

<button class="accordion">Hva er åpningstidene deres</button>
<div class="panel">
  <p>Vi holder åpent alle dager mellom 13:00 og 23:30!kjøkkenet stenger 23:00</p>
</div>

<button class="accordion">Hvor står allergier?</button>
<div class="panel">
  <p>Alle allergener med nøkkelord står på bunnen av menyen.</p>
</div>

<button class="accordion">Hva er størrelsen på burgerne deres?</button>
<div class="panel">
  <p>Alle våre burgere veier 200g, og du kan bestille ekstra patty hvis du er ekstra sulten.</p>
</div>

<button class="accordion">Er det vegetariske alternativer?</button>
<div class="panel">
  <p>Nei, vi har dessverre kun autentisk norsk storfekjøtt hos oss.</p>
</div>

<button class="accordion">Er kjøttet lokalt hentet?</button>
<div class="panel">
  <p>Ja, all kjøtt, melk, poteter og bakevarer kommer fra lokale kilder,
     fra den norske gården med bonden PÅL Pålsen OG fra NORSKE BAKERIER.</p>
</div>

<button class="accordion">Personvern?</button>
<div class="panel">
  <p>Storebror ser alt :-D(https://lovdata.no/dokument/NL/lov/2018-06-15-38)</p>
</div>

<button class="accordion">Er restauranten rullestoltilgjengelig?</button>
<div class="panel">
  <p>Ja, vi har en rampe både ved inngangen og til toalettet for alle rullestolbrukere,
     samt bred inngang.</p>
</div>

<p></p>

</DIV>
 <!--dette er buntekst og alle div er for å sørge før at bun tekst forblir på bunene --> 
    </div>
    </div>
    <br><br><br><br>
    <br>
    <br>
    <div class=" bunntext">
        KONTAKT OSS OM SPØRSMÅL OG RESERVASJONER
        <div class="kon">
            <p>Tlf: XXXXXXXXX</p>
            <p>Epost: NEI@GMAIL.COM</p>
            <p>Adresse: xxxx gate xx</p>





        </div>
<script src="../script/script.js"></script>
</body>

</html>