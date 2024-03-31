export function scrollTo () {

    gsap.registerPlugin(ScrambleTextPlugin);

    let tl = gsap.timeline();

    tl.to("#scramble", {duration:3, scrambleText: {text:"Street Photography", chars:"lowercase", revealDelay: .5}})

}



