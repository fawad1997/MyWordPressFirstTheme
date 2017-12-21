<?php
//Boost Section
	$boost_image		=		get_field('boost_image');
	$boost_heading		=		get_field('boost_heading');
	$boost_description	=		get_field('boost_description');
	$reason1_heading	=		get_field('reason1_heading');
	$reason1_description=		get_field('reason1_description');
	$reason2_heading	=		get_field('reason1_heading');
	$reason2_description=		get_field('reason2_description');
?>
<!-- BOOST YOUR INCOME
================================================== -->
<section id="boost-income">
	<div class="container">
		
		<div class="section-header">
			<!--If Imag is not EMpty -->
			<?php if (!empty($boost_image)) : ?>
				<img src="<?=$boost_image['url'] ?>" alt="<?=$boost_image['alt']?>">
			<?php endif; ?>
			<h2><?=$boost_heading ?></h2>
		</div><!-- section-header -->
		
		<p class="lead"><?=$boost_description ?></p>
		<div class="row">
			<div class="col-sm-6">
				<h3><?=$reason1_heading ?></h3>
				<p><?=$reason1_description ?></p>
			</div><!-- end col -->
			
			<div class="col-sm-6">
				<h3><?=$reason2_heading ?></h3>
				<p><?=$reason2_description ?></p>
			</div><!-- end col -->
		</div><!-- row -->
	
	</div><!-- container -->
</section><!-- boost-income -->
