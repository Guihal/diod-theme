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
{extends file=$layout}

{block name='content'}
  <section id="main">

    {block name='product_list_header'}
      <h2 id="js-product-list-header" class="h2">{$listing.label}</h2>
    {/block}
	
	<div id="subcategories" class="row pb-1 pt-1">
    {foreach from=$subcategories item=subcategory}
    <div class="col-xs-6 col-sm-3 col-md-3">
        <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="img">
            <img class="replace-2x" src="{$urls.base_url}img/c/{$subcategory.id_category}-category_default.jpg" alt="{$subcategory.name|escape:'html':'UTF-8'}"  />
        </a>
        <h5><a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}">{$subcategory.name|escape:'html':'UTF-8'}</a></h5>
    </div>
    {/foreach}
	</div>

    <section id="products" class="active_grid">
      {if $listing.products|count}
{*		<div id="laber-products-top">
*			<div class="row">
*				<div class="col-lg-2 col-md-2 col-sm-3 col-xs-6">
*					<ul class="laberGridList">
*						<li class="display-title pull-left">{l s='Show Sidebar' d='Shop.Theme.Catalog'}</li>
*						<li id="grid" class="pull-left"><a rel="nofollow" href="javascript:void(0)" title="Сетка"><i class="fa fa-th-large"></i></a></li>
*						<li id="list" class="pull-left"><a rel="nofollow" href="javascript:void(0)" title="Список"><i class="fa fa-th-list"></i></a></li>
*					</ul>
*				</div>	
*				  <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 hidden-sm-down total-products">
*					{if $listing.pagination.total_items > 1}
*					  <p>{l s='There are %product_count% products.' d='Shop.Theme.Catalog' sprintf=['%product_count%' => $listing.pagination.total_items]}</p>
*					{elseif $listing.pagination.total_items > 0}
*					  <p>{l s='There is 1 product.' d='Shop.Theme.Catalog'}</p>
*					{/if}
*				  </div>
*			  {block name='product_list_top'}
*				{include file='catalog/_partials/products-top.tpl' listing=$listing}
*			  {/block}
*			</div>
*       </div>
*}
        {block name='product_list_active_filters'}
          <div class="activefilters">
            {$listing.rendered_active_filters nofilter}
          </div>
        {/block}

        <div>
          {block name='product_list'}
            {include file='catalog/_partials/products.tpl' listing=$listing}
          {/block}
        </div>

        <div id="js-product-list-bottom">
          {block name='product_list_bottom'}
            {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
          {/block}
        </div>

      {else}
        <div id="js-product-list-top"></div>

        <div id="js-product-list">
          {include file='errors/not-found.tpl'}
        </div>

        <div id="js-product-list-bottom"></div>
      {/if}
    </section>
	
{if $category.description}
    <div id="category-description">{$category.description nofilter}</div>
{/if}

  </section>
{/block}
