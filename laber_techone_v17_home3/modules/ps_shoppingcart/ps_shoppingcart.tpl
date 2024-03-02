<div id="_desktop_cart" class=" pull-right">
  <div class="blockcart laber-cart dropdown js-dropdown " data-refresh-url="{$refresh_url}">
      <div class="expand-more" data-toggle="dropdown">
			<a class="cart" rel="nofollow" href="{$cart_url}">
				<span class="icon">
					<i class="icon_cart  fa fa-shopping-basket"></i>
					<span class="cart-products-count">{$cart.products_count}</span>	
				</span>	
				<span class="totalCart">{l s='Cart:' d='Shop.Theme.Laberthemes'} <strong>{$cart.totals.total.value}</strong> <i class="fa fa-caret-down"></i></span>
			</a>
		</div>
		<div class="dropdown-menu">
			<div class="cart_block block exclusive">
				{if $cart.products}
				<p class="products_count">Ваша корзина ({$cart.products_count})</p>
				{foreach from=$cart.products item='products'}
					
					<div class="products">
						<div class="img">
							{block name='product_thumbnail'}
								<a href="{$products.url}" class="thumbnail product-thumbnail">
									<img
									src = "{$products.cover.bySize.small_default.url}"
									alt = "{$products.cover.legend}"
									data-full-size-image-url = "{$products.cover.large.url}"
									/>
								</a>
							{/block}
						</div>
						<div class="cart-info">
							<h2 class="h2 productName" itemprop="name">
								<a href="{$products.url}">{$products.name}</a>
							</h2>
							<div class="laberPrice">
								<span class="quantity">{$products.quantity}X</span>
								<span class="price">{$products.price}</span>
							</div>
						</div>
						<p class="remove_link">
							<a rel="nofollow" href="{$products.remove_from_cart_url}"><i class="fa fa-trash"></i></a>
						</p>	
					</div>
				{/foreach}
				<div class="cart-prices">
					<span class="total pull-left">
						{l s='Total:' d='Shop.Theme.Laberthemes'}
					</span>
					
					<span class="amount pull-right">
						{$cart.totals.total.value}
					</span>
				
				</div>
				<div class="cart-buttons">
					 <a rel="nofollow" href="{$cart_url}">
						{l s='Check out' d='Shop.Theme.Laberthemes'} <i class="ion-chevron-right"></i>
					</a>
				</div>
				{else}
					<p class="no-item">
						{l s='No products in the cart.' d='Shop.Theme.Laberthemes'}
					</p>
				{/if}
			</div>
		</div>
	</div>
</div>
