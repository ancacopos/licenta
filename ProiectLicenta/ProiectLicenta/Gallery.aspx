<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="ProiectLicenta.Gallery" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Romanian Open Championship | 2023</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />

        <style>
            * {
                box-sizing: border-box
            }

            body {
                font-family: Verdana, sans-serif;
                margin: 0
            }

            .mySlides {
                display: none
            }

            img {
                vertical-align: middle;
            }

            .slideshow-container {
                max-width: 700px;
                position: relative;
                margin: auto;
            }
            
            .prev,
            .next {
                cursor: pointer;
                position: absolute;
                top: 50%;
                width: auto;
                padding: 16px;
                margin-top: -22px;
                color: white;
                font-weight: bold;
                font-size: 18px;
                transition: 0.6s ease;
                border-radius: 0 3px 3px 0;
                user-select: none;
            }
            .next {
                right: 0;
                border-radius: 3px 0 0 3px;
            }
                .prev:hover,
                .next:hover {
                    background-color: rgba(0, 0, 0, 0.8);
                }
            .text {
                color: #ffffff;
                font-size: 15px;
                padding: 8px 12px;
                position: absolute;
                bottom: 8px;
                width: 100%;
                text-align: center;
            }
            .numbertext {
                color: #ffffff;
                font-size: 12px;
                padding: 8px 12px;
                position: absolute;
                top: 0;
            }
            .dot {
                cursor: pointer;
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #999999;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }

                .active,
                .dot:hover {
                    background-color: #111111;
                }
            .fade {
                -webkit-animation-name: fade;
                -webkit-animation-duration: 30s;
                animation-name: fade;
                animation-duration: 30s;
            }

            @-webkit-keyframes fade {
                from {
                    opacity: .99
                }

                to {
                    opacity: 1
                }
            }

            @keyframes fade {
                from {
                    opacity: .99
                }

                to {
                    opacity: 1
                }
            }
            @media only screen and (max-width: 300px) {
                .prev,
                .next,
                .text {
                    font-size: 11px
                }
            }
        </style>


        
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.aspx"><img class="navbar-brand" src="https://i.imgur.com/Um6AhHy.png" /> </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="Index.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Competition.aspx">Competition info</a></li>
                            <li class="nav-item"><a class="nav-link" href="Camp.aspx">Camp info</a></li>
                            <li class="nav-item"><a class="nav-link" href="RegistrationFee.aspx">Registrations</a></li>
                            <li class="nav-item"><a class="nav-link" href="Gallery.aspx">Gallery</a></li>
                            <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <section class="py-7">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-6">
                            <div class="text-center mb-5">
                                <h1 class="fw-bolder">Competition Photos</h1>
                                <p class="lead fw-normal text-muted mb-0">Memories from previous editions of the Romanian Open Championship</p>
                            </div>
                        </div>
                    </div>


                    <div class="slideshow-container">
                        <div class="mySlides fade">
                            <div class="numbertext">1 / 9</div>
                            <img src="images/1.jpeg" style="width: 100%">
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">2 / 9</div>
                            <img src="images/2.jpeg" style="width: 100%">                            
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">3 / 9</div>
                            <img src="images/3.jpeg" style="width: 100%">
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">4 / 9</div>
                            <img src="https://i.imgur.com/OOww4Zb.jpg" style="width: 100%">
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">5 / 9</div>
                            <img src="https://i.imgur.com/VhwLH89.jpg" style="width: 100%">
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">6 / 9</div>
                            <img src="https://i.imgur.com/iejOYoo.jpg" style="width: 100%">
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">7 / 9</div>
                            <img src="https://i.imgur.com/uoKjs26.jpg" style="width: 100%">
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">8 / 9</div>
                            <img src="https://i.imgur.com/IbHlboE.jpg" style="width: 100%">
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">9 / 9</div>
                            <img src="https://i.imgur.com/WxA5vIw.jpg" style="width: 100%">
                        </div>
                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>
                    </div>
                    <br /><br />
                    <center><iframe width="560" height="315" src="https://www.youtube.com/embed/--Uf-oqjhJo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></center>
                    
                    <br /><br />
                    <center>
                        <div class="text-center mb-5">
                                <h1 class="fw-bolder">Camp Photos</h1>
                            </div>
                        <img src="https://i.imgur.com/K8u2LfV.jpg" /> <br /><br />
                        <img src="https://i.imgur.com/XQmEnqo.jpg" /> <br /><br />
                        <img src="https://i.imgur.com/pNKmPvM.jpg" /> <br /><br />
                        <img src="https://i.imgur.com/JNPMs48.jpg" /> <br /><br />
                        <img src="https://i.imgur.com/KrcptBS.jpg" /> <br /><br />
                    </center>
                    
                </div>
            </section>
        </main>
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    
                </div>
            </div>
        </footer>
        
        <script>
            let slideIndex = 0;
            const slides = document.getElementsByClassName("mySlides");

            showSlides();
            function currentSlide(index) {
                slideIndex = index;
                showSlides();
            }
            function plusSlides(step) {

                if (step < 0) {
                    slideIndex -= 2;

                    if (slideIndex < 0) {
                        slideIndex = slides.length - 1;
                    }
                }

                showSlides();
            }
            function showSlides() {
                for (let i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1
                }
                slides[slideIndex - 1].style.display = "block";
                
            }
        </script>
    </body>
</html>
