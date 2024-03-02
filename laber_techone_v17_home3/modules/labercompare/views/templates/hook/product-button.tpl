
{if isset($product.id_product)}
<a 	href="javascript:void(0)" 
	class="button-action js-compare"  
    data-id-product="{$product.id_product|intval}"
    data-url-product="{$product.url}"
    data-name-product="{$product.name}"
    data-image-product="{$product.cover.small.url}"
   	data-url="{url entity='module' name='labercompare' controller='actions'}"  
    title="">
	<i class="addCompare fa fa-exchange"></i>
    <i class="removeCompare fa fa-close"></i><span>{l s='Compare' d='Shop.Theme.Laberthemes'}</span>
</a>
{/if} 