console.log("Connected bord.js");


const tidEL = document.getElementById("tid");
const gjemtEL = document.getElementById("gjemt");
const tableEL = document.getElementById("Nr");

//skjeker om kloka er ledig//
function BordFargerFraTid(klokka) {
    //array offset(array er en liste som starter på null)
    klokka -= 1;
    //loop gjennom og se om de er opptatt
    for (let i = 0; i < 6; i++) {
        if(bord[i][klokka] == 1){
            console.log("Bord " + (i+1) + " er ledig");
            document.getElementById(i+1).style = "background-color:greenyellow;";
        }else{ 
            console.log("Bord " + (i+1) +" er reservert");
            document.getElementById(i+1).style = "background-color:red;";

        }
    }
}
// console.log betty print ut(skriv ut())
console.log(toato.soup=i);

function chooseTid() {
    // hente ny variabel-verdi
    let valgtTid = tidEL.value;
    console.log(valgtTid);
    if (valgtTid == 0) {
        gjemtEL.style = "display: none;";

    } else {
        BordFargerFraTid(valgtTid);  
        gjemtEL.style = "display: block;";
    }
}
function chooseTable(){
    let valgtNr = tableEL.value;
    let valgtTid = tidEL.value;
    valgtNr -= 1;
    valgtTid -= 1;
    //console.log(valgtNr);
if(bord[valgtNr][valgtTid]==0){
   //BORD ER OPPTATT
   document.getElementById("tatt").innerHTML = "Bord reservert";
   document.getElementById("tatt").style.color = "red"; 
}else{ 
    //BORD ER LEDIG
    document.getElementById("tatt").innerHTML = "Bord ledig";
    document.getElementById("tatt").style.color = "green";
}










}

/* TODO
* få bordene til å faktisk endre farge

* håndtere at den sier ifra når du velger et bord som allerede er reservert

*/