// console.log betyr print ut(skriv ut())
console.log("Connected bord.js");// sier ifra at denne fillen er lastet inn

/// setter HTML elementer som konstante variabler
//  dokument er bare html/ php siden
const tidEL = document.getElementById("tid");
const gjemtEL = document.getElementById("gjemt");
const tableEL = document.getElementById("Nr");

//fargelegger om bord er ledig eller opptat på valgt tidspunkt//
function BordFargerFraTid(klokka) {
    //array offset(array er en liste som starter på null)
    klokka -= 1;
    //loop gjennom og se om de er opptatt
    // bord.length er antal bord
    // (i++ betyr at den kjører loopen på nytt men i er en mer)
    for (let i = 0; i < bord.length; i++) {
        if (bord[i][klokka] == 1) {//skjeker om matrisen er 1(matrise er liste med lister)
            // i er alle bordene og den skjeker m de er ledige eller opptat
            console.log("Bord " + (i + 1) + " er ledig");
            document.getElementById(i + 1).style = "background-color:greenyellow;"; 
        } else {
            console.log("Bord " + (i + 1) + " er reservert");
            document.getElementById(i + 1).style = "background-color:red;";

        }
    }
}


function chooseTid() {
    // hente ny variabel-verdi fra det man har valgt i html
    let valgtTid = tidEL.value;// tid elemente sin verdi(value)
    console.log(valgtTid);//skriver til logen
    if (valgtTid == 0) {// vis du iikk e har valgt en tid så er verdien 0
        gjemtEL.style = "display: none;";// gjør usynlig

    } else {
        BordFargerFraTid(valgtTid); // tiden jeg har valgt fra dropdown
        gjemtEL.style = "display: block;";// gjør synlig
    }
}
function chooseTable() {
    //henter verdiene fra elemntene og setter verdiene fra 1-6 til 0-5 pga. array
    let valgtNr = tableEL.value;//det er valgt bord nr
    let valgtTid = tidEL.value;// valgt fra dropdown
    valgtNr -= 1;
    valgtTid -= 1;
    //
    if (bord[valgtNr][valgtTid] == 0) {
        //BORD ER OPPTATT
        document.getElementById("tatt").innerHTML = "Bord reservert";
        document.getElementById("tatt").style.color = "red";
    } else {
        //BORD ER LEDIG
        document.getElementById("tatt").innerHTML = "Bord ledig";
        document.getElementById("tatt").style.color = "green";
    }

}
