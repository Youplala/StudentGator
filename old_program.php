<html>

<head>
  <head>
    <meta charset="utf-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <link rel="stylesheet" type="text/css" href="css/program.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="js/script.js"></script>
  </head>
</head>
<title>All programs</title>
  <header>
    <?php include 'components/header.php';?>
  </header>

  <body>
    <div class="header_img">
      <div class="header_info">
        <img src="images/logos/eisti.PNG" alt="" class="program_logo responsive_img">
        <div class="text_info hide-on-small-only">
          <h3 class="white-text">Bachelor Ygrec in design</h3>
          <h5 class="white-text">Cergy | $5000 /year</h5>
        </div>

      </div>

    </div>
    <div class="row">
      <div class="col s12 m9 l10">
        <div id="introduction" class="section scrollspy">
          <div class="row">
            <div class="col l5">
              <div class="card">
                <h2 class="">Bachelor Ygrec in design</h2>
                <div class="row center">

                  <div class="col s6 m5 l3">
                    <i class="product_icon medium teal-text text-darken-4 material-icons responsive-img">attach_money</i>
                    <p class="">$5000 /y
                      <br>Additional fees
                    </p>
                  </div>
                  <div class="col s6 m5 l3">
                    <i class="product_icon medium teal-text text-darken-4 material-icons">school</i>
                    <p class="">Bachelor in modelling and data science</p>
                  </div>
                  <div class="col s6 m5 l3">
                    <i class="medium product_icon teal-text text-darken-4 material-icons">book</i>
                    <p class="">Mathematics, Data science, computer science</p>
                  </div>
                  <div class="col s6 m5 l3">
                    <i class="medium product_icon teal-text text-darken-4 material-icons">today</i>
                    <p class="">4 years</p>
                  </div>

                </div>
              </div>
            </div>
            <div class="col l7">
              <div class="card">
                <h4>About</h4>
                <p>Data science, cyber security, economic and financial engineering, artificial intelligence, quantum technologies… are all great challenges which companies face today and which require new and sharp skills.<br><br>

The University Paris Seine is currently setting up a new programme in Modelling and Data Science.

This is a challenge based programme for excellent and curious students, taught exclusively in English, with a curriculum designed to have an impact on the world of tomorrow. Students will receive the best quality combined with the ability to learn through innovative pedagogy and openness to research and challenges of the 21st century.

It features a backbone in Mathematics, and applications to economy, finance, statistics, mathematical modeling, data analysis, artificial intelligence, cybersecurity, and aims to train future top scientists, engineers and managers, both French and English speaking, open to the global complexity of the world.

We invite students to several virtual open days (VOD) in order to present our Bachelor Y in Modelling and Data Science.</p>
              </div>
            </div>

          </div>
        </div>

        <div id="structure" class="section scrollspy">
          <div class="col s12 m12 l7">
            <div class="card">
              <h4>Campus</h4>
              <div class="slider-holder">
                <div class="carousel carousel-slider">
                  <a class="carousel-item" href="#one!"><img src="images/backgrounds/campuseisti3.jpg"></a>
                  <a class="carousel-item" href="#two!"><img src="images/backgrounds/eisti.jpg"></a>
                  <a class="carousel-item" href="#four!"><img src="images/backgrounds/essec.jpg"></a>
                  <a class="carousel-item" href="#five!"><img src="images/backgrounds/essec2.jpg"></a>
                </div>
              </div>

            </div>
          </div>
        </div>

        <div id="initialization" class="section scrollspy">
          <div class="col s12 m12 l5">
            <div class="card">
              <h4>Informations</h4>
              <ul class="collection">
                <li class="collection-item avatar">
                  <i class="material-icons blue circle">whatshot</i>
                  <span class="title">Level</span>
                  <p>Bachelor's degree
                  </p>
                  <a href="#!" class="secondary-content"><p>Apply now</p><i class="material-icons">arrow_forward</i></a>
                </li>
                 <li class="collection-item avatar">
                   <i class="material-icons red circle">attach_money</i>
                   <span class="title black-text text-darken-4">Tuition fees</span>
                     <div class="row">
                       <div class="col l4">
                         <p>APPLY FEE</p>
                         <p>Free</p>
                       </div>
                       <div class="col l3">
                         <p>TUITION FEE</p>
                         <p>25000$ a year</p>
                       </div>
                     </div>
                   <a href="#!" class="secondary-content"><i class="material-icons"></i></a>
                 </li>
                 <li class="collection-item avatar">
                   <i class="material-icons green circle">today</i>
                   <span class="title">Duration</span>
                   <p>4 years
                   </p>

                 </li>

               </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="col hide-on-small-only m3 l2">
        <ul class="section table-of-contents">
          <li><a href="#introduction">About</a></li>
          <li><a href="#structure">Campus</a></li>
          <li><a href="#initialization">Other info</a></li>
        </ul>
      </div>
    </div>

    <script type="text/javascript">
    $(document).ready(function(){
      $('.scrollspy').scrollSpy();
      $('.carousel.carousel-slider').carousel({
  fullWidth: true,
  indicators: true
});

    });
    </script>
    <?php include 'components/footer.php';?>
    <script type="text/javascript" src="js/materialize.min.js"></script>
  </body>


</html>
