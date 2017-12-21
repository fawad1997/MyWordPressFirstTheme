<?php
//Course Introduction
	$course_title		=		get_field('course_title');
	$course_video		=		get_field('course_video');
?>
<!-- VIDEO FEATURETTE
================================================== -->
<section id="featurette">
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<h2><?=$course_title ?></h2>
				<iframe width="100%" height="415" src="<?=$course_video ?>" frameborder="0" allowfullscreen></iframe>
			</div><!-- end col -->
		</div><!-- row -->			
	</div><!-- container -->
</section><!-- featurette -->