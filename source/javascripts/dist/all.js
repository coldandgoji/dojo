require.config({
  paths: {
    "jquery": "//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min"
  }
});

require(['myfile', 'jquery'], function(myFile) {
  myFile.init();
});
