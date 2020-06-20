<!DOCTYPE html>
<html>
    <?php include 'components/head.php' ?>
    <header>
      <?php include 'components/header.php';?>

      <?php include 'php/dbConfig.php'; ?>
    </header>

    <body>
      <div id="front_page" class="container">
        <script type="text/javascript">
        var TxtType = function(el, toRotate, period) {
      this.toRotate = toRotate;
      this.el = el;
      this.loopNum = 0;
      this.period = parseInt(period, 10) || 2000;
      this.txt = '';
      this.tick();
      this.isDeleting = false;
  };

  TxtType.prototype.tick = function() {
      var i = this.loopNum % this.toRotate.length;
      var fullTxt = this.toRotate[i];

      if (this.isDeleting) {
      this.txt = fullTxt.substring(0, this.txt.length - 1);
      } else {
      this.txt = fullTxt.substring(0, this.txt.length + 1);
      }

      this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

      var that = this;
      var delta = 200 - Math.random() * 100;

      if (this.isDeleting) { delta /= 2; }

      if (!this.isDeleting && this.txt === fullTxt) {
      delta = this.period;
      this.isDeleting = true;
      } else if (this.isDeleting && this.txt === '') {
      this.isDeleting = false;
      this.loopNum++;
      delta = 500;
      }

      setTimeout(function() {
      that.tick();
      }, delta);
  };

  window.onload = function() {
      var elements = document.getElementsByClassName('typewrite');
      for (var i=0; i<elements.length; i++) {
          var toRotate = elements[i].getAttribute('data-type');
          var period = elements[i].getAttribute('data-period');
          if (toRotate) {
            new TxtType(elements[i], JSON.parse(toRotate), period);
          }
      }
      // INJECT CSS
      var css = document.createElement("style");
      css.type = "text/css";
      css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #004d40}";
      document.body.appendChild(css);
  };
        </script>
      <h1>
        <a href="" class="typewrite" data-period="2000" data-type='[ "Find the perfect program.", "Apply easily.", "Pursue your dreams.", "Eat vegetables." ]'>
          <span class="wrap"></span>
        </a>
      </h1>
        <div class="button_left_image_right">
          <a href="SGallprogs.php" class="cta">
            <span>Get started</span>
            <svg width="20px" height="17px" viewBox="0 0 13 10">
              <path d="M1,5 L11,5"></path>
              <polyline points="8 1 12 5 8 9"></polyline>
            </svg>
          </a>
        </div>
      </div>



      <div class="main container ">


        <!--<div class="program_cards">
          <div class="program_card ">
            <img src="images/logos/eisti.PNG" alt="Logo CY-Tech" class="logo center">
            <h4 class="center white-text"><b>Bachelor in modelling and data science</b></h4>
          </div>
          <div class="program_card ">
            <img src="images/logos/eisti.PNG" alt="Logo CY-Tech" class="logo center">
            <h4 class="center white-text"><b>Bachelor in modelling and data science</b></h4>
          </div>
          <div class="program_card ">
            <img src="images/logos/eisti.PNG" alt="Logo CY-Tech" class="logo center">
            <h4 class="center white-text"><b>Bachelor in modelling and data science</b></h4>
          </div>
        </div>-->
        <div class="divider"></div>
        <div class="section steps_container">
          <div class="step_container">
            <img src="images/front/reading-gator-1-150x150.png" width="150" height="150" style="margin-top: 30px;">
            <span class="pd1">1</span>
            <span class="pd2">START NOW, SELECT DESIRED FILTERS</span>
            <p>A list of several universities or language programs will appear according to your preferences.</p>
          </div>
          <div class="step_container">
            <img src="images/front/ebook-gator-1-150x150.png" width="150" height="150" style="margin-top: 30px;">
            <span class="pd1">2</span>
            <span class="pd2">ENTER THE UNIVERSITY PAGES</span>
            <p>You can now enter and find all information about the universities listed.</p>
          </div>
          <div class="step_container">
            <img src="images/front/reading-ebook-150x150.png" width="150" height="150" style="margin-top: 30px;">
            <span class="pd1">3</span>
            <span class="pd2">APPLY TO YOUR DREAM PROGRAMS</span>
            <p>You can apply for up to 5 programs amongst your favorites.</p>
          </div>
          <div class="step_container">
            <img src="images/front/readinggator-1-150x150.png" width="150" height="150" style="margin-top: 30px;">
            <span class="pd1">4</span>
            <span class="pd2">BE NOTIFIED OF YOUR APPLIANCE</span>
            <p>A StudentGator advisor will reach you to finalize your application.</p>
          </div>
        </div>

          <div class="white">
            <div class="row container">
              <h2 class="header">Free and easy</h2>
              <div class="row center">

                <div class="col s12 m5 l4">
                  <i class="product_icon large teal-text text-darken-3 material-icons responsive-img">money_off</i>
                  <p class="">Absolutely no charge for students, you only have to apply, upload your documents and StudentGator will do the rest</p>
                </div>
                <div class="col s12 m5 l4">
                  <i class="product_icon large teal-text text-darken-3 material-icons">chat_bubble</i>
                  <p class="">You can contact students at any moment to answer your questions</p>
                </div>
                <div class="col s12 m5 l4 container">
                  <i class="large product_icon teal-text text-darken-3 material-icons">flight</i>
                  <p class="">Specially made for foreign students that want to study in France.</p>
                </div>

              </div>

            </div>
          </div>
      </div>
          <?php include 'components/footer.php';?>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
