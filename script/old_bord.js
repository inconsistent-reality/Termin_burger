console.log("Connected bord.js");


// loger ledigheten til sete 2 på bord 1 
// HER BEGYNER BORD (╯°□°）╯︵ ┻━┻
function optatt() {
    let tid = document.getElementById("tid").value;
    let bordtid = tid - 1;
    
    //tid = tid -1 ;

    document.getElementById("tatt").style.color = "#f7a761";


    console.log("klokka:" + tid);


    if (tid != 0) {
        for (let i = 0; bord[i] != undefined; i++) {
            let bordet = i + 1;
            if (bord[i][bordtid] === 0) {
                //opptatt bord og tid
                document.getElementById(bordet).style.backgroundColor = "red";

            } else if (bord[i][tid] === 1) {
                //ledig bord og tid
                document.getElementById(bordet).style.backgroundColor = "greenyellow";
            } else {
                console.log("Bord: " + i + " \nReservasjoner: " + bord[i] + "\nTid: " + tid);
            }
        }
    } else {

    }
}

function checkReservation() {
    var selectedTime = document.getElementById("reservationTime").value;
    var currentTime = new Date();
    var selectedDate = new Date("2000-01-01 " + selectedTime); // Assuming the date is not important for this example

    // Compare the selected time with the current time
    if (selectedDate <= currentTime) {
        document.getElementById("result").innerText = "Du kan ikke reservere for tidligere tidspunkt.";
    } else {
        document.getElementById("result").innerText = "Reservasjon vellykket!";
        // Add your reservation logic here
    }




}


function visdiv() {
    document.getElementById("rød").innerHTML = "<?php $iBruk = ''; ?>";

    if (document.getElementById("tid").value != 0) {
        document.getElementById("gjemt").style.display = "block";
    }
    else {
        document.getElementById("gjemt").style.display = "none";
    }
};



function reservert() {
    tid = document.getElementById("tid").value;
    bordtid = tid - 3;


    BordNr = document.getElementById("Nr").value;
    if (BordNr == "ett") {
        BordNr = 0;
    } else if (BordNr == "to") {
        BordNr = 1;
    } else if (BordNr == "tre") {
        BordNr = 2;
    } else if (BordNr == "fire") {
        BordNr = 3;
    } else if (BordNr == "fem") {
        BordNr = 4;
    } else if (BordNr == "seks") {
        BordNr = 5;
    }
    else if (BordNr == "seks") {
        BordNr = 6;
    }
    //console.log(bord[BordNr][bordtid])

    if (bord[BordNr][bordtid] == 0) {
        document.getElementById("tatt").innerHTML = "Bord reservert";
        document.getElementById("tatt").style.color = "red";
    } else {
        document.getElementById("tatt").innerHTML = "Bord ledig";
        document.getElementById("tatt").style.color = "green";

    }
}




// 
