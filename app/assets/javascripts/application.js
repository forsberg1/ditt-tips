// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery.purr
//= require best_in_place
//= require shadowbox
//= require jquery.qtip
var gui = {

	middle_remover : function()
	{
		var currentUrl = location.href;
		var split_url  = currentUrl.split("/");
		if(split_url[3] != "")
		{
			$('#header-inner').remove();
			$('#main').css("margin-top", "0px");
			$('#main').css("width", "952");
			$('#footer').css("width", "950");
		}
	}
};
var app = {
	topmenu : function() // idle mode on this one
	{
		$('img.hover').mouseover(function() {
			originalUrl     = $(this).attr("orginal-path");
			var type        = $(this).attr("attr-type");
			console.log(type);
			switch(type)
			{
				case "home":
					urlPath = "/assets/menu_home_hover.png";
				break;
				case "member":
					urlPath = "/assets/menu_member_hover.png";
				break;
				case "browse":
					urlPath = "/assets/menu_browse_hover.png";
				break;
				case "contact":
					urlPath = "/assets/menu_contact_hover.png";
				break;
			}
			$(this).attr("src", urlPath)
		}).mouseout(function(){
    		$(this).attr("src", originalUrl)
  		});
	},
	show_login_popup : function()
	{
		$("#overlay").fadeIn("slow").show();
  		$("#login_form").fadeIn("slow").show();
  		$("body").css("overflow-y", "hidden");
	},
	hide_login_popup : function()
	{
		$("#overlay").fadeOut("slow").hide();
  		$("#login_form").fadeOut("slow").hide();
  		$("body").css("overflow-y", "auto");
	},
	login_style : function()
	{
		$('#login_btn').on('click', function() {
			app.show_login_popup();
		});
		$('#overlay').on('click', function() {
			app.hide_login_popup();
		});
	},
	input_style : function()
	{
		$('input[type=text],input[type=password]').addClass("idleField");  
		$('input[type=text],input[type=password]').live('focus', function() {
			$(this).removeClass("idleField").addClass("focusField"); 
			if (this.value == this.defaultValue){  
            	
            	$(this).css("background", "url(/assets/login_input_active.gif) no-repeat"); 
        	}  	
		});
		$('input[type=text],input[type=password]').live('focusout', function() {
			$(this).css("background", "url(/assets/login_input.gif) no-repeat");
		});
	}
};
$(document).ready(function() {
	$('.best_in_place').best_in_place();
    app.login_style();
    app.input_style();
    Shadowbox.init();
    gui.middle_remover();
    $('a.qtiper[title]').qtip({
   		style: {
      		classes: 'ui-tooltip-green ui-tooltip-shadow'
   		}
	});
});

