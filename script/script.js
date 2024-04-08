

// BB FUNKJUN (¬‿¬)
function submitEL() {
    console.log("test");
    document.getElementById("myform").submit();
}

function deleteEL(){
    
    document.getElementById("myform").submit['delete']();
}



var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function () {
        /* Toggle between adding and removing the "active" class,
        to highlight the button that controls the panel */
        this.classList.toggle("active");

        /* Toggle between hiding and showing the active panel */
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}













function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev, id) {
    ev.preventDefault();

    var data = ev.dataTransfer.getData("text");
    // Clone the dragged element
    var clone = document.getElementById(data).cloneNode(true);

    // Remove all content from the target element
    // var targetElement = ev.target;
    // while (targetElement.firstChild) {
    //     targetElement.removeChild(targetElement.firstChild);
    // }

    // Append the clone to the drop container
    // ev.target.appendChild(clone);
    var element = document.getElementById(clone.id);
    var holder = document.getElementById(ev.target.id + "holder");

    console.log(element.alt == "none")
    holder.value = element.alt

    // console.log(document.getElementById(element.src))

    if (element.alt == "none") {
        document.getElementById(ev.target.id + "-hold").innerHTML = ""
    }
    else {
        document.getElementById(ev.target.id + "-hold").innerHTML = "<img id='" + clone.id + "' src='" + element.src + "' class='ingimg    ' draggable='true' ondragstart='drag(event)'>"
    }
}