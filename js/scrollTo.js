export function scrollTo () {

    gsap.registerPlugin(ScrollPlugin);

    const navLinks = document.querySelectorAll("#main-header nav ul li a");
    //console.log(navLinks);

    function scrollLink(e) {
        e.preventDefault();
        //console.log(e.currentTarget.hash);
        let selectedLink = e.currentTarget.hash;
        gsap.to(window, {duration: 1, scrollTo:{y:`${selectedLink}`, offsetY: 100}});
    }

    navLinks.forEach((navLink) =>{
        navLink.addEventListener("click", scrollLink);
    })


}