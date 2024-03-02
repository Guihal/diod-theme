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
{block name='header_banner'}
{literal}
{/literal}
  <div class="header-banner 111">
    {hook h='displayBanner'}
	  <div class="container">
	  	<style>
			#header .header-nav {
				background: #fff !important;
				border-bottom: 0 !important;
			}
			.container_lab_megamenu {
				background: #4b6677 !important;
			}
		</style>
	  </div>
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="container">

      <div class="row">
        <div class="hidden-sm-down">
			<div class="col-xs-6 col-sm-9">
				{hook h='displayNav1'}
			</div>
			<div class="col-xs-6 col-sm-3">
				{hook h='displayNav2'}
			</div>
        </div>
        <div class="hidden-md-up text-sm-center mobile">
          <div class="float-xs-left" id="_mobile_user_info"></div>
          <div class="float-xs-right" id="_mobile_cart"></div>
          <div class="clearfix"></div>
		  <div class="top-logo" id="_mobile_logo"></div>
		  <div class="Search_top" id="_mobile_Search_top">{widget name="ajaxsearchbar"}</div>
		  <div class="clearfix"></div>
		  <div class="footer-header">
			  <div class="center-mobile">
					<div class="float-xs-left" id="_mobile_language_selector"></div>
					<div class="float-xs-left" id="_mobile_currency_selector"></div>
			  </div>
		  </div>
        </div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
	      <div id="mobile_top_menu_wrapper" class="row hidden-md-up">
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
        <div class="js-top-menu-bottom">
			{hook h='displayVegamenu'}
			{hook h='displayMegamenu'}
			
        </div>
      </div>
       <div class="row">
{hook h='displayTop'}
		
      </div>

    </div>
  </div>
	<div class="container_lab_megamenu hidden-sm-down">
		<div class="container">
			<div class="row">
				<div class="laberMegamenu">
					<div class="displayMegamenu">
						{hook h='displayVegamenu'}
						{widget name="ajaxsearchbar"}
						{hook h='displaySearch'}
					</div>
				</div>
			</div>
		</div>
	</div>
  {hook h='displayNavFullWidth'}
{/block}
