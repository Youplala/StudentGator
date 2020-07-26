<!DOCTYPE html>
<html>
    <?php include 'components/head.php' ?>
    <header>
    </header>
<script type="text/javascript">
AOS.init();
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
    <body>

      <div id="front_content" class="row">
        <div class="front_container container" >
          <h1>
            <a href="" class="typewrite" data-period="2000" data-type='[ "Find the perfect program.", "Apply easily.", "Pursue your dreams.", "Eat vegetables." ]'>
              <span class="wrap"></span>
            </a>
          </h1>
            <div class="buttons row">
              <a href="SGallprogs.php" class="cta">
                <span>Student</span>
                <svg width="20px" height="17px" viewBox="0 0 13 10">
                  <path d="M1,5 L11,5"></path>
                  <polyline points="8 1 12 5 8 9"></polyline>
                </svg>
              </a>
              <a href="SGallprogs.php" class="cta">
                <span>Partner</span>
                <svg width="20px" height="17px" viewBox="0 0 13 10">
                  <path d="M1,5 L11,5"></path>
                  <polyline points="8 1 12 5 8 9"></polyline>
                </svg>
              </a>
            </div>
              <a href="#main" class="btn-floating btn-large waves-effect waves-light" style="float:bottom;background-color:#0F4A52;"><i class="material-icons">arrow_downward</i></a>
        </div>
      </div>
      <?php include 'components/header.php';?>
      <div id="main" class="main">

        <div id="icons_container" class="scrolling_icons_container section container">
          <div class="money_icon row valign-wrapper">
            <div class="col s6 m6 l6 right-align" data-aos="fade-right" data-aos-duration="1500">
              <p style="font-size:3vw;">Absolutely no charge for students. </p>
            </div>
            <div class="col s6 m6 l6 center-align" data-aos="fade-down" data-aos-duration="1500">
              <img src="images/icons/money.svg" alt="Money icon" width="30%;">
            </div>
          </div>
          <div class="travel_icon row valign-wrapper">
            <div class="col s6 m6 l6 center-align" data-aos="fade-up" data-aos-duration="1500">
              <img src="images/icons/plane.svg" alt="Plane icon" width="30%;">
            </div>
            <div class="col s6 m6 l6 left-align" data-aos="fade-down-right" data-aos-duration="1500">
              <p style="font-size:3vw;">Study in a foreign country easily.</p>
            </div>
          </div>
          <div class="chat_icon row valign-wrapper">
            <div class="col s6 m6 l6 right-align" data-aos="zoom-in-right" data-aos-duration="1500">
              <p style="font-size:3vw;">Talk with French students.</p>
            </div>
            <div class="col s6 m6 l6 center-align" data-aos="zoom-in-up" data-aos-duration="1500">
              <img src="images/icons/conversation.svg" alt="Chat icon" width="30%;">
            </div>

          </div>
        </div>

          <div class="steps_container">
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
              <p>A StudentGator advisor will follow up your profile.</p>
            </div>
          </div>
          <?php include 'components/footer.php';?>
      </div>


    <script type="text/javascript" src="js/materialize.min.js"></script>

    </body>
</html>
