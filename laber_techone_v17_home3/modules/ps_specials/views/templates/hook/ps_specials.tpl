{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div class="laberSpecialProducts laberthemes">
<div class="laberProductGrid laberGrid">
<div class="ipadProFull">

	<div class="laberSpecialP">
		<h3 class="title">
			<span>{l s='Daily Deal' d='Shop.Theme.Laberthemes'}</span>
		</h3>
		<div class="laberSpecialPro">
			
				
					<div class="laberSpecial">
						{foreach from=$products item="product"}
							<div class="item-inner  ajax_block_product">
								{include file="catalog/_partials/miniatures/productSpecial.tpl" product=$product}
							</div>
						{/foreach}
					</div>
			
		
		</div>
	</div>
	<div class="owl-buttons">
		<p class="owl-prev prevSpecial"><i class="icon-chevron-left icon"></i></p>
		<p class="owl-next nextSpecial"><i class="icon-chevron-right icon"></i></p>
	</div>

</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		var owl = $(".laberSpecial");
		owl.owlCarousel({
			items : 1,
			itemsDesktop : [1199,1],
			itemsDesktopSmall : [991,1],
			itemsTablet: [767,1],
			itemsMobile : [480,1],
			autoPlay :  6000,
			pagination : false,
			addClassActive : true,
		});
		$(".nextSpecial").click(function(){
		owl.trigger('owl.next');
		})
		$(".prevSpecial").click(function(){
		owl.trigger('owl.prev');
		})
	});
</script>
</div>