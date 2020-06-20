<html>
  <head>
    <head>
      <meta charset="utf-8">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
      <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <link rel="stylesheet" type="text/css" href="css/programm.css">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <script src="js/script.js"></script>
    </head>
  </head>
  <title>CY TECH - EISTI</title>
  <header>
    <?php include 'components/header.php';?>
  </header>

  <body>

    <div class="header">
      <nav class="clean">
        <div class="nav-wrapper left-align">
          <div class="col s12">
            <a href="index.php" class="breadcrumb teal-text text-darken-3">Home</a>
            <a href="SGallprogs.php" class="breadcrumb teal-text text-darken-3">Schools and Programs</a>
            <a href="#!" class="breadcrumb last_breadcrumb teal-text text-darken-4">CY TECH</a>
          </div>
        </div>
      </nav>

      <div class="card">
        <a href="https://eisti.fr">
        <img src="images/logos/cytech.PNG" alt="CY TECH Logo" class="program_logo" width="300px">
        </a>
      </div>
        <h2 id="school_nm">CY TECH formerly EISTI</h2>

    </div>

    <div class="center-align">
      <div class="nav_content">
        <nav>
          <ul>
            <li>
              <a href="#SchoolDescription">
                <span class="material-icons responsive-img">school</span>
                SCHOOL
              </a>
            </li>
            <li>
              <a href="#Campus">
                <span class="material-icons responsive-img">cloud</span>
                THE CAMPUS
              </a>
            </li>
            <li>
              <a href="#!">
                <span class="material-icons responsive-img">group</span>
                THE ALUMNI
              </a>
            </li>
            <li>
              <a href="#Program">
                <span class="material-icons responsive-img">book</span>
                PROGRAMS
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>

    <div class="sd_container">
      <div id="SchoolDescription" class="section scrollspy">
        <div class="row">
          <div class="col s12 m6 l4">
            <h4 class="scl_title">SCHOOL DESCRIPTION</h4>
          </div>
          <div class="col s12 m6 l7">
            <div class="card">

              <p>
                Beyond building a professional career with you, initiating a promising future,
                Whether it is in the field of finance or the vast and diverse industry of new technologies,
                the EISTI leads its students to over 50 different jobs in highly diverse sectors of activity.<br><br>

                In an ever-mutating world where technologies are replaced at great speed,
                the EISTI has chosen to stay at the heart of companies’ needs and technological
                evolution and to train its teaching to help their students reach the most attractive and innovative jobs.<br><br>

                Academic excellence combined with a strong sense of humanism have always brought Eistian culture and spirit to life.
                The school has elected 4 core values in its charter: Professionalism, Openness, Solidarity and Ethics.
                They make the EISTI a unique institution and a great place to study while building a promising future for yourself.
              </p>

              <blockquote>
                 The EISTI Cergy has recently merge with the University of Cergy-Pontoise and the University became CY University, the EISTI became CY TECH
              </blockquote>

            </div>
          </div>
        </div>
      </div>
  </div>

    <div class="rs_container">
        <div class="row center">
          <div class="col s12 m6 l10 offset-l1">
            <div class="card">
              <div class="row">
                <div class="inside_card">
                  <div class="col s12 m6 l3">
                    <i class="product_icon medium teal-text text-darken-4 material-icons responsive-img">attach_money</i>
                    <p class="">$5000 /y
                      <br>Additional fees
                    </p>
                  </div>
                  <div class="col s12 m6 l3">
                    <i class="product_icon medium teal-text text-darken-4 material-icons">school</i>
                    <p class="">12% of International Students</p>
                  </div>
                  <div class="col s12 m6 l3">
                    <i class="medium product_icon teal-text text-darken-4 material-icons">book</i>
                    <p class="">Mathematics</p>
                  </div>
                  <div class="col s12 m6 l3">
                    <i class="medium product_icon teal-text text-darken-4 material-icons">today</i>
                    <p class="">1 - 5 years</p>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col s12 m6 l3 offset-l2">
                  <i class="product_icon medium teal-text text-darken-4 material-icons responsive-img">attach_money</i>
                  <p class="">500 Allumni</p>
                </div>
                <div class="col s12 m6 l3 offset-l2">
                  <a class="btn-floating btn-large white pulse waves-effect waves-light btn modal-trigger" href="#popup_ranking">
                    <i class="product_icon medium teal-text text-darken-4 material-icons">school</i>
                  </a>
                  <p class="">Rankings</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal Structure -->
    <div id="popup_ranking" class="modal">
      <div class="modal-content">

        <h5>Rankings</h5>
          <div class="row center">
            <div class="col s12 m6 l4">
              <i class="product_icon large teal-text text-darken-4 material-icons responsive-img">arrow_downward</i>
              <p class="">
                <span class="modal_span_tlt">L'Etudiant</span></br></br>
                <span class="modal_span_ranking">1st</span>
              </p>
            </div>

            <div class="col s12 m6 l4">
              <i class="product_icon large teal-text text-darken-4 material-icons responsive-img">arrow_downward</i>
              <p class="">
                <span class="modal_span_tlt">Le Figaro</span></br></br>
                <span class="modal_span_ranking">1st</span>
              </p>
            </div>

            <div class="col s12 m6 l4">
              <i class="product_icon large teal-text text-darken-4 material-icons responsive-img">arrow_downward</i>
              <p class="">
                <span class="modal_span_tlt">L'Usine Nouvelle</span></br></br>
                <span class="modal_span_ranking">1st</span>
              </p>
            </div>
          </div>
        </div>
      <div class="modal-footer">
        <a href="#!" class="modal-close waves-effect waves-green btn-flat"><i class="product_icon material-icons responsive-img">check</i></a>
      </div>
    </div>


    <div class="cp_container">
        <div class="row center">
          <div id="Campus" class="section scrollspy">
            <h4 class="cp_title">THE CAMPUS</h4>
            <div class="col s12 m6 l12 camptab">
              <div class="col s12 m6 l6 offset-l3">
                <div class="card">
                  <h6>Choose a campus</h6>
                  <ul class="tabs tabs-fixed-width tab-demo z-depth-1">
                    <li class="tab"><a class="active" href="#Campus1">Cergy</a></li>
                    <li class="tab"><a href="#Campus2">Pau</a></li>

                  </ul>
                </div>
              </div>
            </div>

            <div id="Campus1">
              <div class="col s12 m6 l12 sidelr">
                <div class="col s12 m6 l4">
                  <img class="materialboxed" src="images/backgrounds/eisti_campus4.jpg"></a>
                </div>

                <div class="col s12 m6 l4">
                  <p>
                    Built in 1989, the EISTI campus features four different buildings (Cauchy, Condorcet, Turing, Fermat).
                    Fully fitted with modern equipment (including 3 videoconference-ready amphitheatres and video projectors in every classroom)
                    and located near the student residence, it is reachable via RER A. <br><br>

                    Advantageously located within the 2nd largest student hub in Ile de France, the campus is in close proximity of the prefectural park,
                    Cergy-Pontoise University, ESSEC and the Trois-Fontaines shopping centre.
                  </p>
                </div>

                <div class="col s12 m6 l4">
                  <img class="materialboxed carous_img"  src="images/backgrounds/campuseisti3.jpg">

                </div>
              </div>

              <div class="col s12 m6 l12 sidelr">
                <div class="col s12 m6 l5">
                  <img class="materialboxed" src="images/backgrounds/eisti.jpg"></a>

                </div>

                <div class="col s12 m6 l6">
                  <h6>Students Association</h6>
                  <p>
                    Studying at EISTI means living the life of a Grande École where the classes share activities and are linked to each other by sponsorship.
                    For everyone, it is the ideal way to integrate while benefiting from absolute solidarity.
                    There, friendships are forged that last well after the EISTI Years. More than 40 association in the school.
                  </p>

                  <h6>Working Environment</h6>
                  <p>
                    In the school, the working environment is pleasant and functional and multiple modern means contribute to the smooth running of studies: laptop, virtual school online, videoconferences etc..
                    The EISTI campuses are in our image: Family, dynamic, friendly, and at the same time integrated into the university campuses of their city.
                  </p>

                  <h6>Sports</h6>
                  <p>
                    We have a variety of sports available araound the campus and an association, the ‘BDS’, specialised in organising event.
                  </p>
                </div>
              </div>

              <div class="col s12 m6 l12">
                <h4 class="ls_subtitle">Cergy</h4>
              </div>
                <div class="col s12 m6 l12 sidelr">
                  <div class="col s12 m6 l5">
                    <img class="materialboxed" src="images/city/Cergy/Cergy_1.jpg"></a>

                  </div>

                  <div class="col s12 m6 l6">
                    <p id="sidelris">
                      Administrative capital of the Val d’Oise, Cergy-Pontoise is an urban area of 207,000 inhabitants located 25 kilometres from Paris, at the gateway to the French Vexin Regional Nature Park
                    </p>
                    <p id="sidelris">
                      Its 13 municipalities form a flourishing territory where 11,000 companies are located alongside a first-rate university campus, in a setting that harmoniously combines city and natural spaces..
                    </p>
                    <p id="sidelris">
                      The agglomeration of Cergy-Pontoise offers its residents many green spaces that allow everyone to enjoy the sun when it is not hiding.
                    </p>
                    <p id="sidelris">
                      The prefecture park, combines tranquility and proximity, while the 3 fountains shopping centre offers a wide range of shops, supermarkets and restaurants.</br>
                    </p>

                  </div>
                </div>

              <div class="col s12 m6 l6">
                <h5 class="livingtitle">Living Expense</h5>
                <table class="centered">
                  <thead>
                    <tr>
                      <th>Type</th>
                      <th>Cost</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Accomodation and Services</td>
                      <td>400€ - 700€</td>
                    </tr>
                    <tr>
                      <td>Food</td>
                      <td>150€ - 200€</td>
                    </tr>
                    <tr>
                      <td>Other Expenses</td>
                      <td>100€ - 250€</td>
                    </tr>
                    <tr>
                      <td>Gym</td>
                      <td>20€ - 30€</td>
                    </tr>
                    <tr>
                      <td>Monthly ticket public transport</td>
                      <td>30€ - 40€</td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <div class="col s12 m6 l6">
                <div id="LocCerg" class="section scrollspy">
                  <div id="googleMap"></div>
              </div>
            </div>
          </div>

          <div id="Campus2"></div>

        </div>
      </div>
    </div>

            <div class="pg_container">
              <div id="Program" class="section scrollspy">
                <div class="row center">
                  <div class="col s12 m6 l3">
                    <h4 class="pg_title">PROGRAM</h4>
                    <div class="input-field col s12">
                      <div class="card padcard">
                        <h6>Choice Filter</h6>
                        <select multiple>
                          <option value="" disabled selected>Formation's Level</option>
                          <option value="1">Option 1</option>
                          <option value="2">Option 2</option>
                          <option value="3">Option 3</option>
                        </select>

                        <select multiple>
                          <option value="" disabled selected>Formation</option>
                          <option value="1">Option 1</option>
                          <option value="2">Option 2</option>
                          <option value="3">Option 3</option>
                        </select>
                        <button class="waves-effect waves-light btn button_stl" type="button" name="Reset" onclick="">Reset Choice</button>
                        <button class="waves-effect waves-light btn button_stl" type="button" name="Filter" onclick="">Search Formation</button>
                      </div>
                    </div>
                  </div>



                  <div class="col s12 m6 l9">
                    <div class="card">
                      <div class="row">
                        <div class="Formation_card">
                          <div class="col s12 m6 l4">
                            <div class="card medium hoverable">
                              <div class="col s12">
                                <span class="form_title">Bachelor</span>
                              </div>

                              <div class="col s12 card-content">
                                <span class="form_subtitle">Data Science and Thinking Design</span>
                                <hr>
                              </div>

                              <div class="col s12">
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Duration</span>
                                  <p class="form_sstitle">4 Years</p>
                                </div>

                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Tuition Fee</span>
                                  <p class="form_sstitle">20,000€</p>
                                </div>
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Campus</span>
                                  <p class="form_sstitle">Cergy</p>
                                </div>
                              </div>

                              <div class="col s12">
                                <hr>
                                <div class="col s6">
                                  <p class="applnw">Learn More</p><a class="btn-floating" href="#"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>

                                <div class="col s6">
                                  <p class="applnw">Apply now</p><a class="btn-floating btn-medium white pulse waves-effect waves-light btn modal-trigger" href="#popup_valid"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="Formation_card">
                          <div class="col s12 m6 l4">
                            <div class="card medium hoverable">
                              <div class="col s12">
                                <span class="form_title">Bachelor</span>
                              </div>

                              <div class="col s12 card-content">
                                <span class="form_subtitle">Data Science and Thinking Design</span>
                                <hr>
                              </div>

                              <div class="col s12">
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Duration</span>
                                  <p class="form_sstitle">4 Years</p>
                                </div>

                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Tuition Fee</span>
                                  <p class="form_sstitle">20,000€</p>
                                </div>
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Campus</span>
                                  <p class="form_sstitle">Cergy</p>
                                </div>
                              </div>

                              <div class="col s12">
                                <hr>
                                <div class="col s6">
                                  <p class="applnw">Learn More</p><a class="btn-floating" href="#"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>

                                <div class="col s6">
                                  <p class="applnw">Apply now</p><a class="btn-floating btn-medium white pulse waves-effect waves-light btn modal-trigger" href="#popup_valid"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="Formation_card">
                          <div class="col s12 m6 l4">
                            <div class="card medium hoverable">
                              <div class="col s12">
                                <span class="form_title">Bachelor</span>
                              </div>

                              <div class="col s12 card-content">
                                <span class="form_subtitle">Data Science and Thinking Design</span>
                                <hr>
                              </div>

                              <div class="col s12">
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Duration</span>
                                  <p class="form_sstitle">4 Years</p>
                                </div>

                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Tuition Fee</span>
                                  <p class="form_sstitle">20,000€</p>
                                </div>
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Campus</span>
                                  <p class="form_sstitle">Cergy</p>
                                </div>
                              </div>

                              <div class="col s12">
                                <hr>
                                <div class="col s6">
                                  <p class="applnw">Learn More</p><a class="btn-floating" href="#"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>

                                <div class="col s6">
                                  <p class="applnw">Apply now</p><a class="btn-floating btn-medium white pulse waves-effect waves-light btn modal-trigger" href="#popup_valid"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="Formation_card">
                          <div class="col s12 m6 l4">
                            <div class="card medium hoverable">
                              <div class="col s12">
                                <span class="form_title">Bachelor</span>
                              </div>

                              <div class="col s12 card-content">
                                <span class="form_subtitle">Data Science and Thinking Design</span>
                                <hr>
                              </div>

                              <div class="col s12">
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Duration</span>
                                  <p class="form_sstitle">4 Years</p>
                                </div>

                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Tuition Fee</span>
                                  <p class="form_sstitle">20,000€</p>
                                </div>
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Campus</span>
                                  <p class="form_sstitle">Cergy</p>
                                </div>
                              </div>

                              <div class="col s12">
                                <hr>
                                <div class="col s6">
                                  <p class="applnw">Learn More</p><a class="btn-floating" href="#"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>

                                <div class="col s6">
                                  <p class="applnw">Apply now</p><a class="btn-floating btn-medium white pulse waves-effect waves-light btn modal-trigger" href="#popup_valid"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="Formation_card">
                          <div class="col s12 m6 l4">
                            <div class="card medium hoverable">
                              <div class="col s12">
                                <span class="form_title">Bachelor</span>
                              </div>

                              <div class="col s12 card-content">
                                <span class="form_subtitle">Data Science and Thinking Design</span>
                                <hr>
                              </div>

                              <div class="col s12">
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Duration</span>
                                  <p class="form_sstitle">4 Years</p>
                                </div>

                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Tuition Fee</span>
                                  <p class="form_sstitle">20,000€</p>
                                </div>
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Campus</span>
                                  <p class="form_sstitle">Cergy</p>
                                </div>
                              </div>

                              <div class="col s12">
                                <hr>
                                <div class="col s6">
                                  <p class="applnw">Learn More</p><a class="btn-floating" href="#"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>

                                <div class="col s6">
                                  <p class="applnw">Apply now</p><a class="btn-floating btn-medium white pulse waves-effect waves-light btn modal-trigger" href="#popup_valid"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="Formation_card">
                          <div class="col s12 m6 l4">
                            <div class="card medium hoverable">
                              <div class="col s12">
                                <span class="form_title">Bachelor</span>
                              </div>

                              <div class="col s12 card-content">
                                <span class="form_subtitle">Data Science and Thinking Design</span>
                                <hr>
                              </div>

                              <div class="col s12">
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Duration</span>
                                  <p class="form_sstitle">4 Years</p>
                                </div>

                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Tuition Fee</span>
                                  <p class="form_sstitle">20,000€</p>
                                </div>
                                <div class="col s12 m6 l4">
                                  <span class="form_sstitle">Campus</span>
                                  <p class="form_sstitle">Cergy</p>
                                </div>
                              </div>

                              <div class="col s12">
                                <hr>
                                <div class="col s6">
                                  <p class="applnw">Learn More</p><a class="btn-floating" href="#"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>

                                <div class="col s6">
                                  <p class="applnw">Apply now</p><a class="btn-floating btn-medium white pulse waves-effect waves-light btn modal-trigger" href="#popup_valid"><i class="black-text material-icons">arrow_forward</i></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>




            <div id="popup_valid" class="modal">
              <div class="modal-content">
                <h5>Validation</h5>
                <div class="row center">
                  <p id="applyprog">Do you want to apply for this program?</p>
                  <div class="col s12 m6 l4 offset-l1 divbord">
                    <span class="modal_span_tlt2">Apply for this Program</span></br>
                    <a href="ValidationProgram.php"><i class="product_icon medium teal-text text-darken-4 material-icons responsive-img">check</i></a>
                  </div>

                  <div class="col s12 m6 l4 offset-l2 divbord">
                    <span class="modal_span_tlt2">Cancel the process</span></br>
                    <a href="#!" class="modal-close"><i class="product_icon medium teal-text text-darken-4 material-icons responsive-img">clear</i></a>
                  </div>
                </div>
              </div>
            </div>



            <script type="text/javascript">
            $('.pushpin-demo-nav').each(function() {
              var $this = $(this);
              var $target = $('#' + $(this).attr('data-target'));
              $this.pushpin({
                top: $target.offset().top,
                bottom: $target.offset().top + $target.outerHeight() - $this.height()
              });
              });

            </script>

            <script type="text/javascript">
            $(document).ready(function(){
            $('.pushpin').pushpin();
            });
            </script>

            <script type="text/javascript">
            var elem = document.querySelector('.collapsible.expandable');
            var instance = M.Collapsible.init(elem, {
              accordion: false
            });
            </script>

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

            <script type="text/javascript">
              $(document).ready(function(){
              $('.collapsible').collapsible();
            });
            </script>

            <script type="text/javascript">
              $(document).ready(function(){
              $('.materialboxed').materialbox();
            });
            </script>


            <script type="text/javascript">
            $(document).ready(function(){
                $('.modal').modal();
             });
            </script>

            <script type="text/javascript">
                $(document).ready(function(){
              $('select').formSelect();
            });
            </script>


            <script type="text/javascript">
            $(document).ready(function(){
            $('.scrollspy').scrollSpy();
            });

            </script>


            <script type="text/javascript">
              $(document).ready(function(){
              $('.tabs').tabs();
              });
            </script>


            <script>
            function myMap() {
            var mapProp= {
              center:new google.maps.LatLng(49.03894, 2.07805),
              zoom:9,
            };
            var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

            var CergyLoc = {lat:49.03894, lng:2.07805};
            var marker = new google.maps.Marker({
             position: CergyLoc,
             map: map,
             title: 'Cergy'
           });

           var ParisLoc = {lat:48.8534, lng:2.3488  };
           var marker = new google.maps.Marker({
            position: ParisLoc,
            map: map,
            title: 'Paris'
          });
            marker.setMap(map);
            }
            </script>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCcnmKZZTrwA7PFip6WiFPxZ1xtpGEcr8&callback=myMap"></script>

          </div>
        </div>
      </div>
  </body>
</html>
