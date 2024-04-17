console.log("Connected bord.js");
console.log("Connected Bord.php");

const tidEL = document.getElementById("tid");
//skjeker om kloka er ledig//
function BordFargerFraTid(klokka) {
    //array offset
    klokka -= 1;
    //loop gjennom og se om de er opptatt
    for (let i = 0; i < 6; i++) {
        if(bord[i][klokka] == 1){
            console.log("Bord " + (i + 1) + " er ledig");
        }else{
            console.log("Bord " + (i + 1) +" er reservert");
        }
    }
}



function chooseTid() {
    // hente ny variabel-verdi
    let valgtTid = tidEL.value;
    console.log(valgtTid);
    if (valgtTid == 0) {

    } else {
        BordFargerFraTid(valgtTid);  
    }
}


/* TODO
* få bordene til å faktisk endre farge

* håndtere at den sier ifra når du velger et bord som allerede er reservert

*/