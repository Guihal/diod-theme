{**
 * 2007-2019 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2019 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
 <section class="padding-0-15 margin-bottom-60">
	<div class="laberthemes">
		<div class="viewed-products laberProductGrid">
		  <div class="title_block">
			<h3>
				<span>
				{l s='Viewed products' d='Shop.Theme.Catalog'}
				</span>
			</h3>	
			</div>
		  <div class="products">
			  <div class="laberViewedproducts">
				{foreach from=$products item="product"}
					<div class="item-inner  ajax_block_product">
						{include file="catalog/_partials/miniatures/product.tpl" product=$product}
					</div>
				{/foreach}
			  </div>
		  </div>
		  <div class="owl-buttons">
			<p class="owl-prev prevViewedproducts"><i class="icon-chevron-left"></i></p>
			<p class="owl-next nextViewedproducts"><i class="icon-chevron-right"></i></p>
		</div>
		</div>
	</div>
<script type="text/javascript">
	$(document).ready(function() {
		var owl = $(".laberViewedproducts");
		owl.owlCarousel({
			items : 5,
			itemsDesktop : [1199,3],
			itemsDesktopSmall : [991,2],
			itemsTablet: [767,2],
			itemsMobile : [480,1],
			rewindNav : false,
			autoPlay :  false,
			stopOnHover: false,
			pagination : false,
			addClassActive : true,
		});
		$(".nextViewedproducts").click(function(){
		owl.trigger('owl.next');
		})
		$(".prevViewedproducts").click(function(){
		owl.trigger('owl.prev');
		})
	});
</script>
</section>
