<?php
//Project Feature Section
	$project_title		=		get_field('project_title');
	$project_description=		get_field('project_description');
?>
<!-- PROJECT FEATURES
================================================== -->
<section id="project-features">
	<div class="container">
	
		<h2><?=$project_title ?></h2>
		<p class="lead"><?=$project_description ?></p>
		
		<div class="row">
			<?php $projectloop = new WP_Query(array(
				'post_type' => 'project_features',
				'orderby' => 'post_id',
				'order' => 'ASC')); ?>
			<?php while($projectloop->have_posts()) : $projectloop->the_post(); ?>
				<div class="col-sm-4">
					<?php
						if (has_post_thumbnail()) {
							the_post_thumbnail();
						}
					?>
					<h3><?=the_title(); ?></h3>
					<p><?=the_content(); ?></p>
				</div><!-- col -->
			<?php endwhile; wp_reset_query(); ?>
			
		</div><!-- row -->
		
	</div><!-- container -->
</section><!-- project-features -->