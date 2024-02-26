<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
  
    <link href="css/grid.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollToPlugin.min.js"></script>

    <script type="module" src="js/main.js"></script>

    <title>Camila Romero Portfolio V1</title>
    <link rel="Camila Romero fav icon" type="image/svg" href="images/Logo.svg"/>

</head>
<body> 
    <header class="grid-con" id="main-header">
        <nav id="main-nav">
            <h2 class="hidden">Header Navigation</h2> 
            <ul>
                <li><a href="#about">About</a></li>
                <li><a href="#projects">Projects</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
        <div id="main-logo">
            <a href="index.html"><img src="images/logo.svg" alt="Logo"></a>
        </div>

        <div id="burger-nav">
            <h2 class="hidden">Main Navigation</h2>
            <input type="checkbox" id="hamburger">
            <label for="hamburger">
                <img src="images/burger_icon.svg" alt="hamburger menu icon">
            </label>
            <div id="burger-con">
                <ul>
                    <li><a href="#about">About</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </header>

    <section id="contactForm" class="grid-con">
        <h2 id="contactTitle">CONTACT ME</h2>
            <h3 id="contactTitle1">Do you wanna collaborate?</h3>

            <div id="form">
                <form method="post" action="sendmail.php">

                    <input type="text" placeholder="First Name" name="first_name" id="first_name">
                
                <br><br>
                
                    <input type="text" placeholder="Last Name" name="last_name" id="last_name">
                
                    <br><br>
                
                    <input type="text" placeholder="Email" name="email" id="email">
                
                    <br><br>
                
                    <textarea name="comments" placeholder="Comments" id="comments">Comment here</textarea>
                
                    <br><br>
                
                    <button type="submit" value="send">Send</button>
                    <br><br>    <br><br>
                </form>
            </div>

            <h2 id="textThanks">Thanks for contacting me, I'll go back to you once I finish my coffee!</h2>

    </section>
    
</body>
</html>