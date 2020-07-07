<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Baloo+Paaji+2:wght@400;600&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@600&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Francois+One&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Secular+One&display=swap" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
  <link rel="stylesheet" type="text/css" href="css/blog.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <script src="js/tiny-init.js"></script>
  <script src='https://cdn.tiny.cloud/1/pey3w0rlrjtwz103klfkfluaaymjykovcczyih5wjhg54pjv/tinymce/5/tinymce.min.js' referrerpolicy="origin"></script>
</head>
<title>CY TECH - EISTI</title>
<header>
<?php include 'components/header.php';?>
<?php include 'php/dbConfig.php'; ?>
</header>
<script type="text/javascript">
tinymce.init({
  selector: '#article_txt_area',
  placeholder: 'Type here...',
  plugins: [
    "code ",
    "paste",
    "image",
    "imagetools",
    "advlist autolink lists link image charmap print preview anchor",
    "searchreplace visualblocks code fullscreen",
    "insertdatetime media table paste imagetools"
  ],
  content_style: '.left { text-align: left; } ' +
    'img.left { float: left; } ' +
    'table.left { float: left; } ' +
    '.right { text-align: right; } ' +
    'img.right { float: right; } ' +
    'table.right { float: right; } ' +
    '.center { text-align: center; } ' +
    'img.center { display: block; margin: 0 auto; } ' +
    'table.center { display: block; margin: 0 auto; } ' +
    '.full { text-align: justify; } ' +
    'img.full { display: block; margin: 0 auto; } ' +
    'table.full { display: block; margin: 0 auto; } ' +
    '.bold { font-weight: bold; } ' +
    '.italic { font-style: italic; } ' +
    '.underline { text-decoration: underline; } ' +
    '.example1 {} ' +
    '.tablerow1 { background-color: #D3D3D3; }',
  formats:{
    bold: [
       { inline: 'span', styles: { fontWeight: 'bold' } },
       { inline: 'b', remove: 'all' }
     ],
  },
  style_formats: [
    { title: 'Custom format', format: 'customformat' },
    { title: 'Align left', format: 'alignleft' },
    { title: 'Align center', format: 'aligncenter' },
    { title: 'Align right', format: 'alignright' },
    { title: 'Align full', format: 'alignfull' },
    { title: 'Bold text', inline: 'strong' },
    { title: 'Red text', inline: 'span', styles: { color: '#ff0000' } },
    { title: 'Red header', block: 'h1', styles: { color: '#ff0000' } },
    { title: 'Badge', inline: 'span', styles: { display: 'inline-block', border: '1px solid #2276d2', 'border-radius': '5px', padding: '2px 5px', margin: '0 2px', color: '#2276d2' } },
    { title: 'Table row 1', selector: 'tr', classes: 'tablerow1' },
    { title: 'Image formats' },
    { title: 'Image Left', selector: 'img', styles: { 'float': 'left', 'margin': '0 10px 0 10px' } },
    { title: 'Image Right', selector: 'img', styles: { 'float': 'right', 'margin': '0 0 10px 10px' } },
  ],
  paste_data_images: true,
  toolbar: "undo redo | bold italic fontsizeselect| alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image table",
  menubar:false,
  statusbar: false,
  images_reuse_filename: true,
  content_css: 'css/tinymce.css',
  content_style: ".mce-content-body {font-size:15px;font-family:Arial,sans-serif;}",
  height: 500,
  images_upload_url : 'upload_blog_img.php',
  automatic_uploads : true
});

</script>
<script type="text/javascript">
function filePreview(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#uploadForm + img').remove();
            $('#file_wrapper').after('<img src="'+e.target.result+'" width="200" style="display: inline;"/>');
        };
        reader.readAsDataURL(input.files[0]);
    }
}
</script>
<body>
  <div class="main container">
    <div class="article_card card">
      <div class="title center">
        <h1 class="teal-text text-darken-4">Write an article for the blog</h1>
      </div>
      <form method="post" action="upload_article.php" id="uploadForm" enctype="multipart/form-data">
        <div class="row">
          <div class="col s3"></div>
            <div class="col s3"></div>
            <div class="input-field col s12">
              <textarea id="article_title" name="article_title" class="materialize-textarea" data-length="70"></textarea>
              <label for="article_title">Title of your article</label>
              <span class="helper-text" data-error="<?php echo $titleErr; ?>" data-success="right"></span>
            </div>
          </div>


        <textarea id="article_txt_area" name="article_txt_area">
        </textarea>

        <p>Article picture:</p>
        <div class="file-field input-field row">
          <div class="btn">
            <span>File</span>
            <input type="file" id="article_bg">
          </div>
          <div class="file-path-wrapper col s6">
            <input class="file-path validate" type="text" id="file_wrapper">
            <script type="text/javascript">
            $("#article_bg").change(function () {
              filePreview(this);
            });
            </script>
          </div>
        </div>
        <div class="divider"></div>
        <input type="submit" name="submit" value="Upload" class="waves-effect waves-green btn-flat">
      </form>
    </div>

  </div>
<script type="text/javascript">
$(document).ready(function() {
 $('textarea#article_title').characterCounter();
});


</script>
<script type="text/javascript" src="js/materialize.min.js"></script>

</body>
<?php include 'components/footer.php';?>
</html>
