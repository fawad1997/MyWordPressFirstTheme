<?php
/*Template Name: Resources Page */
get_header();
$thumbnail_url = wp_get_attachment_url( get_post_thumbnail_id( $post->ID));
?>

<!-- FEATURE IMAGE
	================================================== -->
	<?php if(has_post_thumbnail()){ ?>
		<section class="feature-image" style="background:url('<?=$thumbnail_url ?>') no-repeat; background-size: cover;" data-type="background" data-speed="2">
			<h1><?=the_title(); ?></h1>
		</section>
	<?php }else{ ?>
		<section class="feature-image feature-image-default" data-type="background" data-speed="2">
			<h1><?=the_title(); ?></h1>
		</section>
	<?php } ?>
    
    
    <!-- MAIN CONTENT
	================================================== -->
    <div class="container">
	    <div class="row" id="primary">
	    
		    <div id="content" class="col-sm-12">
			    
			    <section class="main-content">
			    	<?php while(have_posts()) : the_post(); ?>
			    		<?=the_content(); ?>
			    	<?php endwhile; ?>
			    	<hr>
			    	
			    	<div class="resource-row clearfix">

			    		<?php
			    			$loop = new WP_Query(array(
			    				'post_type' => 'resourceslist',
			    				'orderby'	=> 'post_id',
			    				'order'		=> 'ASC'
			    				));
			    			while ($loop->have_posts()) : $loop->the_post();
			    		?>
			    		<?php
			    			$resource_image		=		get_field( 'resource_image' );
			    			$resource_url		=		get_field( 'resource_url' );
			    			$add_button			=		get_field( 'add_button' );
			    			$button_text		=		get_field( 'button_text' );
			    		?>
				    	<div class="resource">
					    	<img src="<?=$resource_image['url'] ?>" alt="<?=$resource_image['alt'] ?>">
					    	<h3><a href="<?=$resource_url ?>"><?=the_title(); ?></a></h3>
					    	<p><?=the_content(); ?></p>
					    	<a href="<?=$resource_url ?>" class="btn btn-success"><?=$button_text ?></a>
				    	</div>
				    <?php endwhile; wp_reset_query(); ?>
			    	</div>
			    </section>
		    	
		    </div><!-- content -->
		    	    
	    </div><!-- primary -->
    </div><!-- container -->
	

<?php get_footer(); ?>