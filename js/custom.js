
// Start VIDEO Popup
$(document).ready(function () {	

	var $videoSrc;
	$('.video-btn').click(function () {
		$videoSrc = $(this).data("src");
	});
	console.log($videoSrc);

	// when the modal is opened autoplay it  
	$('#VideoModal').on('shown.bs.modal', function (e) {

		// set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
		$("#video").attr('src', $videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0");
	})

	// stop playing the youtube video when I close the modal
	$('#VideoModal').on('hide.bs.modal', function (e) {
		// a poor man's stop video
		$("#video").attr('src', $videoSrc);
	})

});

/// END Video Popup


// Start Image Popup 

$(function () {
	$('.popmedia').on('click', function () {
		var title = $(this).attr("title");
		$('.modal-title').html(title);		
		$('.imagepreview').attr('src', $(this).find('img').attr('data-image'));
		$('#imagemodal').modal('show');
	});
});

// End Image Popup

