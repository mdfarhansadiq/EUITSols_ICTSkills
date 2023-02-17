function postDisable() {
    var chk = 0;
    chk = document.getElementById("keyVal").textContent;
    if (chk) {
        document.getElementById("title").disabled = true;
        document.getElementById("description").disabled = true;
        document.getElementById("image").disabled = true;
        document.getElementById("about_btn").disabled = true;

        //$("#formID").children().prop('disabled',true);
    }
}
postDisable();


