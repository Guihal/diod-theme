{**
 * 2007-2018 PrestaShop
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
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

<div class="padding-0-15">
	<div class="block_newsletter links">
		<p class="h3 newsletter-title hidden-sm-down">{l s='Sign Up For Newsletter' d='Shop.Theme.Global'}</p>
		<div class="title clearfix hidden-md-up" data-target="#footer_sub_menu_newsletter" data-toggle="collapse">
			<span class="h3">{l s='Sign Up For Newsletter' d='Shop.Theme.Global'}</span>
			<span class="float-xs-right">
			  <span class="navbar-toggler collapse-icons">
				<i class="material-icons add">&#xE313;</i>
				<i class="material-icons remove">&#xE316;</i>
			  </span>
			</span>
		</div>
		<div id="footer_sub_menu_newsletter" class="collapse">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="conditions">
					  {if $conditions}
						<p>{$conditions}</p>
					  {/if}
					  {if $msg}
						<p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
						  {$msg}
						</p>
					  {/if}
					  {if isset($id_module)}
						{hook h='displayGDPRConsent' id_module=$id_module}
					  {/if}
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<form action="{$urls.pages.index}#footer" method="post">
						<div class="input-wrapper">
						  <input
							name="email"
							type="email"
							value="{$value}"
							placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
							aria-labelledby="block-newsletter-label"
						  >
						
						<input
						  class="btn btn-primary"
						  name="submitNewsletter"
						  type="submit"
						  value="{l s='Subscribe' d='Shop.Theme.Actions'}"
						>
						</div>
						<input type="hidden" name="action" value="0">
						<div class="clearfix"></div>
				  </form>
				</div>
			</div>
		</div>
	</div>
</div>
