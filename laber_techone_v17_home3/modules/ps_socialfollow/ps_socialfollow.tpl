{*
* 2007-2016 PrestaShop
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
*  @copyright  2007-2016 PrestaShop SA

*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{block name='block_social'}
  <div id="laberSocialBlock" class="laberLinks links wrapper">
	<p class="h3 myaccount-title hidden-sm-down">
    <a class="text-uppercase" href="{$urls.pages.my_account}" rel="nofollow">
      {l s='Social' d='Shop.Theme.Customeraccount'}
    </a>
  </p>
  <div class="title clearfix hidden-md-up" data-target="#footer_Social" data-toggle="collapse">
    <span class="h3">{l s='Social' d='Shop.Theme.Customeraccount'}</span>
    <span class="float-xs-right">
      <span class="navbar-toggler collapse-icons">
        <i class="material-icons add">&#xE313;</i>
        <i class="material-icons remove">&#xE316;</i>
      </span>
    </span>
  </div>
    <ul class="collapse" id="footer_Social">
      {foreach from=$social_links item='social_link'}
		{if $social_link.class == facebook}
			<li class="laber-{$social_link.class}">
				<a href="{$social_link.url}" title="{$social_link.label}" target="_blank">
					<span><i class="fa fa-facebook"></i><span class="social-text">{$social_link.label}</span></span>
				</a>
			</li>
		{/if}
		{if $social_link.class == twitter}
			<li class="laber-{$social_link.class}">
			<a href="{$social_link.url}" title="{$social_link.label}" target="_blank"><span><i class="fa fa-twitter"></i><span class="social-text">{$social_link.label}</span></span></a></li>
		{/if}
		{if $social_link.class == rss}
			<li class="laber-{$social_link.class}">
			<a href="{$social_link.url}" title="{$social_link.label}" target="_blank"><span><i class="fa fa-rss"></i><span class="social-text">{$social_link.label}</span></span></a></li>
		{/if}
		{if $social_link.class == youtube}
			<li class="laber-{$social_link.class}">
			<a href="{$social_link.url}" title="{$social_link.label}" target="_blank"><span><i class="fa fa-youtube"></i><span class="social-text">{$social_link.label}</span></span></a></li>
		{/if}
		{if $social_link.class == googleplus}
			<li class="laber-{$social_link.class}">
			<a href="{$social_link.url}" title="{$social_link.label}" target="_blank"><span><i class="fa fa-google-plus"></i><span class="social-text">{$social_link.label}</span></span></a></li>
		{/if}
		{if $social_link.class == pinterest}
			<li class="laber-{$social_link.class}">
			<a href="{$social_link.url}" title="{$social_link.label}" target="_blank"><span><i class="fa fa-pinterest-p"></i><span class="social-text">{$social_link.label}</span></span></a></li>
		{/if}
		{if $social_link.class == vimeo}
			<li class="laber-{$social_link.class}">
			<a href="{$social_link.url}" title="{$social_link.label}" target="_blank"><span><i class="fa fa-vimeo"></i><span class="social-text">{$social_link.label}</span></span></a></li>
		{/if}
		{if $social_link.class == instagram}
			<li class="laber-{$social_link.class}">
			<a href="{$social_link.url}" title="{$social_link.label}" target="_blank"><span><i class="fa fa-instagram"></i><span class="social-text">{$social_link.label}</span></span></a></li>
		{/if}
      {/foreach}
    </ul>
  </div>
{/block}