

<?php
session_start();
//Start av PHP-sesjon:

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meny</title>
    <link rel="stylesheet" href="../style/style.css" media="screen and (min-device-width: 800px)">
    <link rel="stylesheet" href="../style/phonestyle.css" media="screen and (max-device-width: 800px)">
</head>

<body>

    <div class="meny">
        <a class="orange" href="/index.php">Hjem</a>
        <a class="darkorange" href="Meny.php">Meny</a>
        <a class="orange" href="Anmeldelse.php">Anmeldelse</a>
        <a class="orange" href="bord.php">Bord</a>
        <a class="orange" href="FAQ.php">FAQ</a>
        <a class="orange" href="tickting/ticket.php">ticket</a>
        <a class="orange" href="BB.php">Bygg</a>
        <!-- <a class="orange" href="mal.php">mal</a> -->


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
    <h1 class="overskrift">
        MENY
    </h1>
    <div class="line"></div>
    <br>
    <div class="burgermeny">
            <!-- Burgermeny med forskjellige burgere -->

         <!--div class henter bilder fra en annen mappe og lenker de 2 sammen 
        FOR Å LINKE sammen mapper husk ..(gå ut av nåværende mappe)/(inn i ny mappe)navn på ny fill i ny mappe. 
    ../style/ style.css  --> 
        <div class="burger">
            <img class="burger-img" src="../bilder/burgere/cheeseburger.png" alt="">
            <h3>Cheeseburger</h3>
            <p>Norsk storfekjøtt og ost fra den norske bonde</p>
            <h4>G, N, M</h4>
        </div>
        <div class="burger">
            <img class="burger-img" src="../bilder/burgere/dubble-cheeseburger.png" alt="">
            <h3>Double trouble
            </h3>
            <p> Dobbelt kjøtt, dobbelt glede</p>
            <H3>B, E, SU, HV, M </H3>
        </div>
        <div class="burger">
            <img class="burger-img" src="../bilder/burgere/lonley-lettuse.png" alt="">
            <h3>Lonely lettuce</h3>
            <p>Burger uten ost, men med ketchup</p>
            <h3>H, SU, HV </h3>


        </div>
        <div class="burger">
            <img class="burger-img" src="../bilder/burgere/chunkey-cheese.png" alt="">
            <h3>Chunky cheese</h3>
            <p>Salat og ost I en en perfekt harmoni med kolesterol</p>
            <H3>HV, SY, M, SY,  </H3>

        </div>
    </div>
    <br><br>
    <div class="burgermeny">
        <div class="burger">
            <img class="burger-img" src="../bilder/burgere/tribble-heart-attack.png" alt="">
            <h3>Triple heart attack
            </h3>
            <p>Størrelse på burgeren er viktig!</p>
            <H3>SU, M, HA, </H3>
        </div>
        <div class="burger">
            <img class="burger-img" src="../bilder/burgere/smooth-cheese.png" alt="">
            <h3>Smooth cheese
            </h3>
            <p>Chunky cheese bare smooth</p>
            <H3>HA, M, SU, </H3>
        </div>
        <div class="burger">
            <img class="burger-img" src="../bilder/burgere/bigus-mackus.png" alt="">
            <h3>Bigus Macus</h3>
            <p>Lovlig ikke Big Mac</p>
            <H3>SU, SY, M, HV, H, </H3>


        </div>
       
    </div>
     <div class="allergi">
        <!-- ALERGIER SLIKT AT DE  IKKE DØR OG KOMMERTILBAKE MED DET OFISELLE MAKERINGENE-->
<h1>Allergener:</h1>
<h3>B – Bygg, E – Egg, F – Fisk, H – Hvete, HA – Hasselnøtter,
 HV – Havre, M – Melk, MA – Mandel, N – Nøtter, P – Peanøtter,
  R – Rug, SP – Sennep, SD – Skalldyr, SL – Selleri, SU – Sulfitter,
   S – Sesam, SY – Soya</h3>
</div>
    <div>

 <!--dette er buntekst og alle div er for å sørge før at bun tekst forblir på bunene --> 
    </div>
    </div>
    <br>
    <br>
    <div class="bunntext">
        KONTAKT OSS OM SPØRSMÅL OG RESERVASJONER
        <div class="kon">
            <p>Tlf: XXXXXXXXX</p>
            <p>Epost: NEI@GMAIL.COM</p>
            <p>Adresse: xxxx gate xx</p>





        </div>

</body>

</html>