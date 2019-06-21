$(() => {

	const row = $('.r');

	$(window).scroll(e => {

		const pageHeight = $(document).innerHeight();
		const windowHeight = $(window).innerHeight();
		const windowBottom = pageHeight - windowHeight;
		
		if (windowBottom <= $(window).scrollTop()) {
			
			$('#pane').append(row.prop('outerHTML'))
			          .hide()
			          .fadeIn(500);
		}
	});

});