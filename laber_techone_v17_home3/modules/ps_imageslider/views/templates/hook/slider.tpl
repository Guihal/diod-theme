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

{if $homeslider.slides}
  <div id="carousel" data-ride="carousel" class="carousel slide" data-interval="{$homeslider.speed}" data-wrap="{(string)$homeslider.wrap}" data-pause="{$homeslider.pause}">
    <ul class="carousel-inner" role="listbox">
      {foreach from=$homeslider.slides item=slide name='homeslider'}
        <li class="carousel-item {if $smarty.foreach.homeslider.first}active{/if}" role="option" aria-hidden="{if $smarty.foreach.homeslider.first}false{else}true{/if}">
          <a href="{$slide.url}">
            <figure>
              <img src="{if isset($ets_link_base)}{$ets_link_base}/modules/ets_superspeed/views/img/preloading.png{else}{$slide.image_url}{/if}" class="lazyload" data-src="{$slide.image_url}" alt="{$slide.legend|escape}"><span class="ets_loading">
{if isset($ETS_SPEED_LOADING_IMAGE_TYPE) && $ETS_SPEED_LOADING_IMAGE_TYPE == 'type_1'}
    <div class="spinner_1"></div>
{elseif isset($ETS_SPEED_LOADING_IMAGE_TYPE) && $ETS_SPEED_LOADING_IMAGE_TYPE == 'type_2'}
    <div class="lds-ring"><div></div><div></div><div></div><div></div></div>
{elseif isset($ETS_SPEED_LOADING_IMAGE_TYPE) && $ETS_SPEED_LOADING_IMAGE_TYPE == 'type_3'}
    <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
{elseif isset($ETS_SPEED_LOADING_IMAGE_TYPE) && $ETS_SPEED_LOADING_IMAGE_TYPE == 'type_4'}
    <div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>
{elseif isset($ETS_SPEED_LOADING_IMAGE_TYPE) && $ETS_SPEED_LOADING_IMAGE_TYPE == 'type_5'}
    <div class="lds-spinner"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
{/if}
</span>
              {if $slide.title || $slide.description}
                <figcaption class="caption">
                  <h2 class="display-1 text-uppercase">{$slide.title}</h2>
                  <div class="caption-description">{$slide.description nofilter}</div>
                </figcaption>
              {/if}
            </figure>
          </a>
        </li>
      {/foreach}
    </ul>
    <div class="direction" aria-label="{l s='Carousel buttons' d='Shop.Theme.Global'}">
      <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
        <span class="icon-prev hidden-xs" aria-hidden="true">
          <i class="material-icons">&#xE5CB;</i>
        </span>
        <span class="sr-only">{l s='Previous' d='Shop.Theme.Global'}</span>
      </a>
      <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
        <span class="icon-next" aria-hidden="true">
          <i class="material-icons">&#xE5CC;</i>
        </span>
        <span class="sr-only">{l s='Next' d='Shop.Theme.Global'}</span>
      </a>
    </div>
  </div>
{/if}
