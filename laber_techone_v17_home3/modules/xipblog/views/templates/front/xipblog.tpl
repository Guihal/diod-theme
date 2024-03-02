{if $page.page_name == 'index'}
<div class="laberthemes clearfix">
<div class="home_blog_post_area {$xipbdp_designlayout} {$hookName}">
	<div class="home_blog_post">
			{if isset($xipbdp_title)}
				<h3 class="title">
					<span>{$xipbdp_title}</span>
				</h3>
			{/if}
			{*if isset($xipbdp_subtext)}
				<p class="page_subtitle">{$xipbdp_subtext}</p>
			{/if*}
			
		<div class="laberblog-i">
		<div class="row">
		{if (isset($xipblogposts) && !empty($xipblogposts))}
		<div class="home_blog_post_inner">
		
			{foreach from=$xipblogposts item=xipblgpst name=xipblg}
				<div class="item-inner">
					<div class="item">
						<article class="blog_post">
							<div class="blog_post_content">
								
										
											<div class="blog_post_content_top">
												
												<div class="post_thumbnail laberMedia-body">
													{if $xipblgpst.post_format == 'video'}
														{assign var="postvideos" value=','|explode:$xipblgpst.video}
														{if $postvideos|@count > 1 }
															{include file="module:xipblog/views/templates/front/post-video.tpl" videos=$postvideos width='570' height="570" class="carousel"}
														{else}
															{include file="module:xipblog/views/templates/front/post-video.tpl" videos=$postvideos width='570' height="570" class=""}
														{/if}
													{elseif $xipblgpst.post_format == 'audio'}
														{assign var="postaudio" value=','|explode:$xipblgpst.audio}
														{if $postaudio|@count > 1 }
															{include file="module:xipblog/views/templates/front/post-audio.tpl" audios=$postaudio width='570' height="570" class="carousel"}
														{else}
															{include file="module:xipblog/views/templates/front/post-audio.tpl" audios=$postaudio width='570' height="570" class=""}
														{/if}
													{elseif $xipblgpst.post_format == 'gallery'}
														{if $xipblgpst.gallery_lists|@count > 1 }
															{include file="module:xipblog/views/templates/front/post-gallery.tpl" gallery=$xipblgpst.gallery_lists imagesize="home_default" class="carousel"}
														{else}
															{include file="module:xipblog/views/templates/front/post-gallery.tpl" gallery=$xipblgpst.gallery_lists imagesize="home_default" class=""}
														{/if}
													{else}
														<a class="thumbnail" href="{$xipblgpst.link}">
															<img class="xipblog_img img-responsive" src="{$xipblgpst.post_img_large}" alt="{$xipblgpst.post_title}">
														</a>
														<div class="blog_mask">
															<div class="blog_mask_content">
																<a class="thumbnail_lightbox" href="{$xipblgpst.post_img_large}">
																	<i class="icon_plus"></i>
																</a>
															</div>
														</div>
													{/if}
												</div>
											</div>
											<div class="blog_post_content_bottom">
													<div class="post_meta clearfix">
														<p class="meta_author"> 
															{l s='by' d='Shop.Theme.Laberthemes'}
															<span>{$xipblgpst.post_author_arr.firstname} {$xipblgpst.post_author_arr.lastname}</span>
														</p> &nbsp;/&nbsp;
														<p class="meta_date">
															<span>{$xipblgpst.post_date|date_format:"%B"} {$xipblgpst.post_date|date_format:"%d"} {$xipblgpst.post_date|date_format:"%Y"}</span>
														</p>
													</div>
													<h3 class="post_title"><a href="{$xipblgpst.link}">{$xipblgpst.post_title}</a></h3>
											</div>
								
							</div>
						</article>
					</div>
				</div>
			{/foreach}
		</div>
		<div class="owl-buttons">
			<div class="owl-prev prevBlog_post_inner"><i class="icon-chevron-left icon"></i></div>
			<div class="owl-next nextBlog_post_inner"><i class="icon-chevron-right icon"></i></div>
		</div>
		{else}
			<p>{l s='No Blog Post Found' d='Shop.Theme.Laberthemes'}</p>
		{/if}
		</div>
		
		</div>
	</div>
</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		var owl = $(".home_blog_post_inner");
		owl.owlCarousel({
			items : 1,
			itemsDesktop : [1199,1],
			itemsDesktopSmall : [991,1],
			itemsTablet: [767,1],
			itemsMobile : [480,1],
			rewindNav : false,
			autoPlay :  false,
			stopOnHover: false,
			pagination : false,
		});
		$(".nextBlog_post_inner").click(function(){
		owl.trigger('owl.next');
		})
		$(".prevBlog_post_inner").click(function(){
		owl.trigger('owl.prev');
		})
	});
</script>
{/if}