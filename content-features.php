<?php
//Features Section
	$features_image		=		get_field('features_image');
	$features_title		=		get_field('features_title');
	$features_description=		get_field('features_description');
?>
<!-- COURSE FEATURES
================================================== -->
<section id="course-features">
	<div class="container">
	
		<div class="section-header">
			<?php if (!empty($features_image)) : ?>
				<img src="<?=$features_image['url'] ?>" alt="<?=$features_image['alt'] ?>">
			<?php endif; ?>
			<h2><?=$features_title ?></h2>
			<p class="lead"><?=$features_description ?></p>
		</div><!-- section-header -->
		
		<div class="row align-content-center">
			<?php
				$loop = new WP_Query(array('post_type' => 'course_features',
				'orderby'=> 'post_id',
				'order' => 'ASC' )); ?>

			<?php while ($loop->have_posts()) : $loop->the_post(); ?>
			<div class="col-sm-2">
				<i class="<?=the_field('icons_radio_button') ?>"></i>
				<h4><?=the_title(); ?></h4>
			</div><!-- end col -->

		<?php endwhile; wp_reset_query(); ?>

		</div><!-- row -->
	</div><!-- container -->
</section><!-- course-features -->