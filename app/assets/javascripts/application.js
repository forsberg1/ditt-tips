// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
var app = {
	topmenu : function()
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
	login_style : function()
	{
		$('#login_btn').live('click', function() {
			$("#overlay").fadeIn("slow").show();
  			$("#login_form").fadeIn("slow").show();
  			$("body").css("overflow-y", "hidden");
		});

	}
};
$(document).ready(function() {
	app.topmenu();
	var mydiv = $('#login_form');
    mydiv.css({
        
    });
    app.login_style();

});
