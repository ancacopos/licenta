<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProiectLicenta.index" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Romanian Open Championship | 2023</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.aspx"><img class="navbar-brand" src="https://i.imgur.com/Um6AhHy.png" /> </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Competition.aspx">Competition info</a></li>
                            <li class="nav-item"><a class="nav-link" href="Camp.aspx">Camp info</a></li>
                            <li class="nav-item"><a class="nav-link" href="RegistrationFee.aspx">Registrations</a></li>
                            <li class="nav-item"><a class="nav-link" href="Gallery.aspx">Gallery</a></li>
                            <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <header class="bg-dark py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">Romanian Open Championship</h1>
                                <p class="lead fw-normal text-white-50 mb-4">16.09 > 17.09.2023</p>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="https://i.imgur.com/fwVAcul.jpg" alt="..." /></div>
                    </div>
                </div>
            </header>
            <div class="py-7 bg-light">
                <div class="container px-7 my-7">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 col-xl-7">
                            <div class="text-center">
                                <div class="fs-4 mb-4 fst-italic">Since its inception in 2015, AnVision Club, an esteemed dancesport club based in Timisoara, has taken on the remarkable responsibility of hosting the annual Romanian Open Championship. This remarkable tournament is licensed by the World DanceSport Federation and enjoys the valued support of the Romanian DanceSport Federation. Throughout recent years, the competition has experienced remarkable growth, captivating the interest of numerous participants and spectators alike. With each successive edition, the organizers eagerly anticipate the arrival of over 1000 couples from more than 30 countries, solidifying its reputation as a truly prestigious competion that leaves a lasting impression.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="py-7" id="features">
                <div class="container px-5 my-7">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">Essential Informations</h2></div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi-piggy-bank"></i></div>
                                    <h2 class="h5">Tickets</h2>
                                    <p style="text-align: justify; text-justify: inter-word;" class="mb-0">Regular tickets are available at the competition venue and VIP tickets can be reserved via phone call or e-mail. Prices for regular tickets are 10€/pers. and VIP tickets 20€/pers.</p>
                                </div>
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi-geo-alt"></i></div>
                                    <h2 class="h5">Venue</h2>
                                    <p style="text-align: justify; text-justify: inter-word;" class="mb-0">The competition will take place at Constantin Jude Hall, Aleea F.C. Ripensia, Timisoara, Romania</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-7">
                <div class="container px-5 my-7">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <div class="text-center">
                                <h2 class="fw-bolder">Latest news</h2>
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="https://images.pexels.com/photos/6207368/pexels-photo-6207368.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Registration started</h5></a>
                                    <p style="text-align: justify; text-justify: inter-word;" class="card-text mb-0"> We are happy to announce that the registration period started. Make sure you sign-up until 3rd of September.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center"> 
                                            <div class="small">
                                                <div class="fw-bold">Anca Copos</div>
                                                <div class="text-muted">August 1, 2023</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="https://i.imgur.com/dQsZhlj.jpg" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Media</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Livestream</h5></a>
                                    <p style="text-align: justify; text-justify: inter-word;" class="card-text mb-0">We are thrilled to share the exciting news that the highly anticipated competition will be showcased to a wider audience through live broadcasting on TV, Digi Sport, and DanceSportTotal online platform.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center"> <div class="small">
                                                <div class="fw-bold">Anca Copos</div>
                                                <div class="text-muted">July 5, 2023 </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="https://i.imgur.com/zev7Rqq.png" width="" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Hair & Make-up</h5></a>
                                    <p class="card-text mb-0">The Beautycode Studio will be present at the competition venue, offering hairstyling and makeup services. To secure your place, please reach out to them in advance.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <div class="small">
                                                <div class="fw-bold">Anca Copos</div>
                                                <div class="text-muted">June 30 , 2023</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <div class="text-center">
                                <h2 class="fw-bolder">Partners</h2>
                                <br />
                            </div>
                        </div>
                    </div>

                    <center>
                        <img src="https://dummyimage.com/64x32/fff/000.png&text=Logo1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="https://dummyimage.com/64x32/fff/000.png&text=Logo2" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="https://dummyimage.com/64x32/fff/000.png&text=Logo3" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="https://dummyimage.com/64x32/fff/000.png&text=Logo4" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="https://dummyimage.com/64x32/fff/000.png&text=Logo5" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <img src="https://dummyimage.com/64x32/fff/000.png&text=Logo6" />
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
        
        <script src="js/button.js"></script>
    </body>
</html>