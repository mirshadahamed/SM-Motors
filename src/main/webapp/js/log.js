var a = document.getElementById("one"),
    b = document.getElementById("two"),
    c = document.getElementById("three"),
    d = document.getElementById("four"),
    r = document.getElementById("b1"),
    s = document.getElementById("b2");

r.onclick = function () {
    // Hide a and b, show c and d (without any slide or transition)
    a.classList.add("hide");
    a.classList.remove("show");
    b.classList.add("hide");
    b.classList.remove("show");
    c.classList.remove("hide");
    c.classList.add("show");
    d.classList.remove("hide");
    d.classList.add("show");
}

s.onclick = function () {
    // Hide c and d, show a and b (without any slide or transition)
    c.classList.add("hide");
    c.classList.remove("show");
    d.classList.add("hide");
    d.classList.remove("show");
    a.classList.remove("hide");
    a.classList.add("show");
    b.classList.remove("hide");
    b.classList.add("show");
}
