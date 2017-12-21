<?php
	//Who Should Take Section
	$who_should_image	=		get_field('who_should_image');
	$who_should_title	=		get_field('who_should_title');
	$who_should_description=	get_field('who_should_description');
?>
<!-- WHO BENEFITS
================================================== -->
<section id="who-benefits">
	<div class="container">
		
		<div class="section-header">
			<?php if (!empty($who_should_image)) : ?>
				<img src="<?=$who_should_image['url'] ?>" alt="<?=$who_should_image['alt'] ?>">
			<?php endif; ?>
			<h2><?=$who_should_title ?></h2>
		</div><!-- section-header -->
		
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<?=$who_should_description ?>
			</div><!-- end col -->
		</div><!-- row -->

	</div><!-- container -->
</section><!-- who-benefits -->
