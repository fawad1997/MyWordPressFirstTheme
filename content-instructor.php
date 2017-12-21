<?php
//Your Instructor
	$instructor_title	=		get_field('instructor_title');
	$instructor_name	=		get_field('instructor_name');
	$instructor_intro	=		get_field('instructor_intro');
	$instructor_brief_intro=	get_field('instructor_brief_intro');
	$num_students		=		get_field('num_students');
	$number_reviews		=		get_field('number_reviews');
	$number_cources		=		get_field('number_cources');
	$facebook_username	=		get_field('facebook_username');
	$twitter_username	=		get_field('twitter_username');
	$google_username	=		get_field('google_username');
?>
<!-- INSTRUCTOR
================================================== -->
<section id="instructor">
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-md-6">
				<div class="row">
					<div class="col-lg-8">
						<h2><?=$instructor_title ?> <small><?=$instructor_name ?></small></h2>
					</div><!-- end col -->
					<div class="col-lg-4">
						<a href="https://twitter.com/<?=$twitter_username ?>" class="badge social twitter" target="_blank"><i class="fa fa-twitter"></i></a>
						<a href="https://facebook.com/<?=$facebook_username ?>" class="badge social facebook" target="_blank"><i class="fa fa-facebook"></i></a>
						<a href="https://plus.google.com/<?=$google_username ?>" class="badge social gplus" target="_blank"><i class="fa fa-google-plus"></i></a>
					</div><!-- end col -->
				
				</div><!-- row -->
				
				<p class="lead"><?=$instructor_intro ?><p>
				
				<p><?=$instructor_brief_intro ?></p>
				
				<hr>
				
				<h3>The Numbers <small>They Don't Lie</small></h3>
				<div class="row">
					<div class="col-xs-4">
						<div class="num">
							<div class="num-content">
								<?=$num_students ?> <span>students</span>
							</div><!-- num-content -->
						</div><!-- num -->
					</div><!-- end col -->
					
					<div class="col-xs-4">
						<div class="num">
							<div class="num-content">
								<?=$number_reviews?> <span>reviews</span>
							</div><!-- num-content -->
						</div><!-- num -->
					</div><!-- end col -->
					
					<div class="col-xs-4">
						<div class="num">
							<div class="num-content">
								<?=$number_cources?> <span>courses</span>
							</div><!-- num-content -->
						</div><!-- num -->
					</div><!-- end col -->
				</div><!-- row -->
				
			</div><!-- end col -->
		</div><!-- row -->
	</div><!-- container -->
</section><!-- instructor -->