<?php
//Testomonial Heading
	$testimonial_heading_=		get_field('testimonial_heading_');
?>
<!-- TESTIMONIALS
================================================== -->
<section id="kudos">
	<div class="container">
		<div class="row">
		
			<div class="col-sm-8 col-sm-offset-2">
				<h2><?=$testimonial_heading_ ?></h2>
		
		<?php $testomonial_arr = new WP_Query(array(
							'post_type' => 'testimonial',
							'orderby'	=>	'post_id',
							'order'	=>	'ASC')); ?>
						<?php while($testomonial_arr->have_posts()) : $testomonial_arr->the_post(); ?>		
				<!-- TESTIMONIAL -->
				<div class="row testimonial">
					<div class="col-sm-4">
						<?php
						if(has_post_thumbnail()){
							the_post_thumbnail();
						}
						?>
					</div><!-- end col -->
					<div class="col-sm-8">
						<blockquote>
							<?=the_content(); ?>
							<cite><?=the_title(); ?></cite>
						</blockquote>
					</div><!-- end col -->
				</div><!-- row -->
		<?php endwhile; wp_reset_query(); ?>
				
			</div><!-- end col -->
			
		</div><!-- row -->
	</div><!-- container -->
</section><!-- kudos -->