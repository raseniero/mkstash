<script>
    import { onMount } from 'svelte';
    
    onMount(async () => {
        const jQuery = await import('jquery');
        const Slick = await import('slick-carousel');

        console.log(Slick);
        console.log(jQuery);

        jQuery('.ht__testimonial__activation').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            swipeToSlide: true,
            dots: false,
            centerMode: true,
            focusOnSelect: true,
            centerPadding: '10px',
            responsive: [
            {
                breakpoint: 600,
                settings: {
                dots: false,
                slidesToShow: 1,
                slidesToScroll: 1,  
                centerPadding: '10px',
                }
            },
            {
                breakpoint: 320,
                settings: {
                autoplay: true,
                dots: false,
                slidesToShow: 1,
                slidesToScroll: 1,
                centerMode: false,
                focusOnSelect: false,
                }
            }
            ]
        });
    });
    
</script>

<svelte:head>
    <link rel="stylesheet" type="text/css" href="css/plugins/slick.css"/>
    <link rel="stylesheet" type="text/css" href="css/plugins/slick-theme.css"/>
</svelte:head>

<!-- Start Testimonial Area -->
<section class="htc__testimonial__area bg__cat--4">
	<div class="container">
		<div class="row">
			<div class="ht__testimonial__activation clearfix">
				<!-- Start Single Testimonial -->
				<div class="col-lg-6 col-md-6 single__tes">
					<div class="testimonial">
						<div class="testimonial__thumb">
							<img src="images/test/client/1.png" alt="testimonial images">
						</div>
						<div class="testimonial__details">
							<h4><a href="index.html">Mr.Mike Band</a></h4>
							<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
						</div>
					</div>
				</div>
				<!-- End Single Testimonial -->
				<!-- Start Single Testimonial -->
				<div class="col-lg-6 col-md-6 single__tes">
					<div class="testimonial">
						<div class="testimonial__thumb">
							<img src="images/test/client/2.png" alt="testimonial images">
						</div>
						<div class="testimonial__details">
							<h4><a href="index.html">Ms.Lucy Barton</a></h4>
							<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
						</div>
					</div>
				</div>
				<!-- End Single Testimonial -->
				<!-- Start Single Testimonial -->
				<div class="col-lg-6 col-md-6 single__tes">
					<div class="testimonial">
						<div class="testimonial__thumb">
							<img src="images/test/client/1.png" alt="testimonial images">
						</div>
						<div class="testimonial__details">
							<h4><a href="index.html">Ms.Lucy Barton</a></h4>
							<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
						</div>
					</div>
				</div>
				<!-- End Single Testimonial -->
				<!-- Start Single Testimonial -->
				<div class="col-lg-6 col-md-6 single__tes">
					<div class="testimonial">
						<div class="testimonial__thumb">
							<img src="images/test/client/2.png" alt="testimonial images">
						</div>
						<div class="testimonial__details">
							<h4><a href="index.html">Ms.Lucy Barton</a></h4>
							<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
						</div>
					</div>
				</div>
				<!-- End Single Testimonial -->
			</div>
		</div>
	</div>
</section>
<!-- End Testimonial Area -->