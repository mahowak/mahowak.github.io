(function($) {
    $(document).ready(function() {
	
	$('#color_plots').scianimator({
	    'images': ['color_plots/color_plots1.png', 'color_plots/color_plots2.png', 'color_plots/color_plots3.png'],
	    'width': 700,
	    'delay': 1000,
	    'loopMode': 'loop'
	});
	$('#color_plots').scianimator('play');
    });
})(jQuery);
