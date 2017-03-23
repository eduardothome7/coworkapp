// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap-sprockets
//= require data-confirm-modal
//= require moment
//= require bootstrap-datetimepicker
//= require cropbox-min
//= require_tree .

$(document).ready(function() {


	$('.cep').change(function() {
		
		var cep = $(this).val();

		$('#cep_msg').html('Buscando CEP...');

		$.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(data) {

            if (!("erro" in data)) {
            	$('#cep_msg').html('');
                $("#logradouro").val(data.logradouro);
                $("#bairro").val(data.bairro);
                $("#cidade").val(data.localidade);
                $("#uf").val(data.uf);
           	} else {
                //CEP pesquisado não foi encontrado.
                $('#cep_msg').html('CEP não encontrado');
            }
        });
	});

	$('.timepicker').datetimepicker({
    	format: 'LT'
    });

    $('#room_name').change(function(){

        var name = $(this).val();

        $.ajax({
            url: '/rooms/'+name,
            success: function(data) {

            },
            error: function(data) {

            }
        });

    });

    var options =
    {
        thumbBox: '.thumbBox, .coverBox',
        spinner: '.spinner',
        imgSrc: '/assets/default.png'
     }
 
    var cropper;

    $(".input-img").on('change', function(){
        var reader = new FileReader();
        reader.onload = function(e) {
          options.imgSrc = e.target.result;
          cropper = $('#avatarBox').cropbox(options);
        }
        reader.readAsDataURL(this.files[0]);
        this.files = [];
        $('#cropMsg').fadeOut();       
    });

    $('.btnCrop').on('click', function(){
        var img = cropper.getDataURL();
        // Place the cropped image's datafile.
        $('.croppedAvatar').html('<img src="'+img+'" width="100%">');
 
        //atualiza o campo hidden field com os dados da imagem cortada
        $('#avatar').attr('src', img);        
        $('#picture_datafile').val(img);  
        $('#cropMsg').fadeIn();
        console.log($('#picture_datafile').val());     
    });
 
    $('.btnZoomIn').on('click', function(){        
      cropper.zoomIn();  
      $('#cropMsg').fadeOut();       
    });
 
    $('.btnZoomOut').on('click', function(){         
      cropper.zoomOut(); 
      $('#cropMsg').fadeOut();        
    });

    $(".fancyBox, .zoom").fancybox();

    // $('.img_gallery').hover(function(){
    //     alert('ok');
    //     $(this).children('.zoom').fadeIn();
    // });

});