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
*
*  MODIFIED BY MYPRESTA.EU FOR PRESTASHOP 1.7 PURPOSES !
*
*}
<div class="tab-pane fade in" id="laberProductcomments">
<script type="text/javascript">
    var productcomments_controller_url = '{$productcomments_controller_url}';
    var confirm_report_message = '{l s='Вы хотите пожаловаться на данный отзыв?' mod='productcomments' js=1}';
    var secure_key = '{$secure_key}';
    var productcomments_url_rewrite = '{$productcomments_url_rewriting_activated}';
    var productcomment_added = '{l s='Ваш отзыв был добавлен!' mod='productcomments' js=1}';
    var productcomment_added_moderation = '{l s='Ваш отзыв будет добавлен после проверки на спам.' mod='productcomments' js=1}';
    var productcomment_title = '{l s='New comment' mod='productcomments' js=1}';
    var productcomment_ok = '{l s='OK' mod='productcomments' js=1}';
    var moderation_active = {$moderation_active};
</script>

<div id="productCommentsBlock">
    <div class="labertabs">
        <div class="laberButtonReviews clearfix">
            {if ($too_early == false AND ($logged OR $allow_guests))}
                <a class="open-comment-form btn btn-primary" href="#new_comment_form">{l s='Оставить отзыв' mod='productcomments'}</a>
            {/if}
        </div>
        <div id="new_comment_form_ok" class="alert alert-success" style="display:none;padding:15px 25px"></div>
        <div id="product_comments_block_tab">
            {if $comments}
                {foreach from=$comments item=comment}
                    {if $comment.content}
                        <div class="comment clearfix">
                            <div class="comment_author">
                                <span>{l s='Оценка' mod='productcomments'}&nbsp</span>
                                <div class="star_content clearfix">
                                    {section name="i" start=0 loop=5 step=1}
                                        {if $comment.grade le $smarty.section.i.index}
                                             <div class="star"><i class="fa fa-star"></i></div>
											{else}
											<div class="star star_on"><i class="fa fa-star"></i></div>
                                        {/if}
                                    {/section}
                                </div>
                                <div class="comment_author_infos">
                                    <strong>{$comment.customer_name|escape:'html':'UTF-8'}</strong><br/>
                                    <em>{dateFormat date=$comment.date_add|escape:'html':'UTF-8' full=0}</em>
                                </div>
                            </div>
                            <div class="comment_details">
                                <h4 class="title_block">{$comment.title}</h4>
                                <p>{$comment.content|escape:'html':'UTF-8'|nl2br}</p>
                                <ul>
                                    {if $comment.total_advice > 0}
                                        <li>{l s='%1$d из %2$d людей посчитали этот отзыв полезным.' sprintf=[$comment.total_useful,$comment.total_advice] mod='productcomments'}</li>
                                    {/if}
                                    {if $logged}
                                        {if !$comment.customer_advice}
                                            <li>{l s='Был ли данный отзыв полезен для вас?' mod='productcomments'}
                                                <button class="usefulness_btn" data-is-usefull="1" data-id-product-comment="{$comment.id_product_comment}">{l s='да' mod='productcomments'}</button>
                                                <button class="usefulness_btn" data-is-usefull="0" data-id-product-comment="{$comment.id_product_comment}">{l s='нет' mod='productcomments'}</button>
                                            </li>
                                        {/if}
                                        {if !$comment.customer_report}
                                            <li><span class="report_btn" data-id-product-comment="{$comment.id_product_comment}">{l s='Пожаловаться' mod='productcomments'}</span></li>
                                        {/if}
                                    {/if}
                                </ul>
                                {hook::exec('displayProductComment', $comment) nofilter}
                            </div>
                        </div>
                    {/if}
                {/foreach}
            {else}
                {if (!$too_early AND ($logged OR $allow_guests))}
                    <p class="align_center alert alert-info">
                        <a id="new_comment_tab_btn" class="open-comment-form" href="#new_comment_form">{l s='Станьте первым, кто оставит отзыв' mod='productcomments'} !</a>
                    </p>
                {else}
                    <p class="align_center">{l s='Пока нет отзывов на данный товар.' mod='productcomments'}</p>
                {/if}
            {/if}
        </div>
    </div>

    {if isset($product) && $product}
        <!-- Fancybox -->
        <div style="display:none">
            <div id="new_comment_form">
                <form id="id_new_comment_form" action="#">
                    <h2 class="title">{l s='Оставить отзыв' mod='productcomments'}</h2>
                    {if isset($product) && $product}
                        <div class="product clearfix">
                            <div class="product_desc">
                                <p class="product_name"><strong>{$product->name}</strong></p>
                                {$product->description_short nofilter}
                            </div>
                        </div>
                    {/if}
                    <div class="new_comment_form_content">
                        <h2>{l s='Оставить отзыв' mod='productcomments'}</h2>
                        <div id="new_comment_form_error" class="error" style="display:none;padding:15px 25px">
                            <ul></ul>
                        </div>
                        {if $criterions|@count > 0}
                            <ul id="criterions_list">
                                {foreach from=$criterions item='criterion'}
                                    <li>
                                        <div class="star_content">
                                            <input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="1"/>
                                            <input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="2"/>
                                            <input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="3"/>
                                            <input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="4"/>
                                            <input class="star" type="radio" name="criterion[{$criterion.id_product_comment_criterion|round}]" value="5" checked="checked"/>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                {/foreach}
                            </ul>
                        {/if}
                        <label for="comment_title">{l s='В двух словах' mod='productcomments'}<sup class="required">*</sup></label>
                        <input id="comment_title" name="title" type="text" value=""/>

                        <label for="content">{l s='Ваш подробный отзыв' mod='productcomments'}<sup class="required">*</sup></label>
                        <textarea id="content" name="content"></textarea>

                        {if $allow_guests == true && !$logged}
                            <label>{l s='Ваше имя' mod='productcomments'}<sup class="required">*</sup></label>
                            <input id="commentCustomerName" name="customer_name" type="text" value=""/>
                        {/if}

                        <div id="new_comment_form_footer">
                            <input id="id_product_comment_send" name="id_product" type="hidden" value='{$id_product_comment_form}'/>
                            <p class="fl required"><sup>*</sup> {l s='Обзятельные поля' mod='productcomments'}</p>
                            <p class="fr">
                                <button class="btn btn-primary" id="submitNewMessage" name="submitMessage" type="submit">{l s='Отправить' mod='productcomments'}</button>&nbsp;
                                {l s='or' mod='productcomments'}&nbsp;<a href="#" onclick="$.fancybox.close();">{l s='Отменить' mod='productcomments'}</a>
                            </p>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </form><!-- /end new_comment_form_content -->
            </div>
        </div>
        <!-- End fancybox -->
    {/if}
</div>
</div>