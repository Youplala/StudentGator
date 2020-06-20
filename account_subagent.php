<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">

  <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>

  <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
  <link rel="stylesheet" type="text/css" href="css/account.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <script src="js/script.js"></script>
</head>
  <header>
    <?php include 'components/header.php';?>
  </header>
  <body>
    <div class="main container">
      <div class="row">
        <div class="col s12 m12 l7">
            <div class="row card">
              <div class="col s12 m8 l9">
                <h5>Sub-Agent | <span class="teal-text">Dorian Roux</span></h5>
              </div>
              <div class="row tabs_container">
                <div class="col s12 m12 l12">
                  <ul id="tabs-swipe-demo" class="tabs transparent">
                    <li class="tab col s6 m3 l3"><a href="#tab1">Information</a></li>
                    <li class="tab col s6 m3 l3"><a href="#documents">Documents</a></li>
                    <li class="tab col s6 m3 l3"><a href="#tab3">Applied programs</a></li>
                    <li class="tab col s6 m3 l3"><a href="#tab4">Support</a></li>
                  </ul>
                </div>
                <div id="tab1" class="col s12 ">
                  <div class="row">
                    <form class="tasks_container col s12">
                        <div class="row">
                          <div class="input-field col s6">
                            <input disabled value="Dorian" id="first_name" type="text" class="validate">
                            <label for="disabled">First Name</label>
                          </div>
                          <div class="input-field col s6">
                            <input disabled value="Roux" id="last_name" type="text" class="validate">
                            <label for="disabled">Last Name</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s6">
                            <input disabled value="+33-688-641-723" id="disabled" type="text" class="validate">
                            <label for="disabled">Phone number</label>
                          </div>
                          <div class="input-field col s6">
                            <input id="email" type="email" class="validate">
                            <label for="email">Email</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="input-field col s6">
                            <input id="old_password" type="password" class="validate">
                            <label for="password">Current password</label>
                          </div>
                          <div class="input-field col s6">
                            <input id="new_password" type="password" class="validate">
                            <label for="password">New password</label>
                          </div>
                        </div>
                        <a class="waves-effect waves-light btn">submit email</a>
                        <a class="waves-effect waves-light btn">submit password</a>
                      </form>
                    </div>
                </div>
                <div id="documents" class="row">
                  <div class="col s12 m12 l12">
                    <ul class="collection with-header">
                      <li class="collection-header"><h4>Verification documents</h4></li>
                      <li class="collection-item">
                      <div>
                        <form action="#">
                            <div class="file-field input-field">
                              <div class="btn">
                                <span><i class="material-icons">file_upload</i></span>
                                <input type="file">
                              </div>
                              <div class="file-path-wrapper">
                                <input class="file-path validate" type="text" placeholder="CV / Resumee">
                              </div>
                            </div>
                        </form>
                      </li>
                      <li class="collection-item">
                        <form action="#">
                          <div class="file-field input-field">
                            <div class="btn">
                              <span><i class="material-icons">file_upload</i></span>
                              <input type="file" multiple>
                            </div>
                            <div class="file-path-wrapper">
                              <input class="file-path validate" type="text" placeholder="ID Recto + verso">
                            </div>
                          </div>
                        </form>

                      </li>
                      <li class="collection-item"><div>Proof of residence<a href="#!" class="secondary-content"><i class="material-icons">delete</i></a></div></li>
                    </ul>
                  </div>
                </div>
                </div>
                <div id="tab3" class="col s12 ">
                  <div class="s12 m12 l12 ">
                    <h5>Applied programs <span class="teal-text">3/5</span></h5>
                    <ul class="collapsible expandable">
                      <li>
                        <div class="collapsible-header"><i class="material-icons">brush</i>Bachelor in modelling and data science</div>
                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                      </li>
                      <li>
                        <div class="collapsible-header"><i class="material-icons">place</i>Master in Finance and Business</div>
                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                      </li>
                      <li>
                        <div class="collapsible-header"><i class="material-icons">business_center</i>Some other program</div>
                        <div class="collapsible-body"><span>Lorem ipsum dolor sit amet.</span></div>
                      </li>
                    </ul>

                  </div>
                </div>
                <div id="tab4" class="col s12 ">
                  <div class="s12 m12 l12 ">
                    <h5>Chat in construction</h5>
                  </div>
                </div>
            </div>
        </div>
        <div class="col s12 m12 l5">
          <div class="card">
            <h4>Students list</h4>
            <div class="input-field">
              <input id="student_search" type="text" class="validate">
              <label for="student_search">Search for a student</label>

            </div>
            <div class="collection">
               <a href="#!" class="collection-item">Elie Brosset</a>
               <a href="#!" class="collection-item">Mohamed Hassanien</a>
               <a href="#!" class="collection-item">Dorian Roux</a>
               <a href="#!" class="collection-item">Maria-Paula Roulet</a>
             </div>

          </div>
        </div>
      </div>
    </div>

    <?php include 'components/footer.php';?>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script>
      var el = document.querySelector('.tabs');
      var instance = M.Tabs.init(el, {});
      var hasTouchscreen = 'ontouchstart' in window;
      if (hasTouchscreen) {
        var instance = M.Tabs.init(el, {swipeable:true});
      }
      var elem = document.querySelector('.collapsible.expandable');
      var instance = M.Collapsible.init(elem, {
        accordion: false
      });


      </script>
      <script>

      </script>
  </body>
</html>
