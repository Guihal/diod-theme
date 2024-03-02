{if $lab_show_color!=0}
<style type="text/css">
{if $lab_cbgcolor !=''}
.pspc-main .seconds .count, #products .pspc-main .seconds .count,
.support-footer-inner .support-info .icon,
.product-cover .layer .zoom-in,
.scroll-box-arrows i:hover,
.laberGridList li a:hover, .active_list .laberGridList li#list a, .active_grid .laberGridList li#grid a,
#newsletter_block_popup .block_content .laberContent h2,
.links .collapse li a:hover,
.laberColumn .owl-buttons p:hover,
.blog_post_content p.meta_author span,
.productName a:hover,.has_discount .price,

.laberthemes .owl-buttons .owl-prev:hover, 
.laberthemes .owl-buttons .owl-next:hover,
.laberProductGrid .tab_cates li a:hover,
#header .lab-menu-horizontal ul li.level-1 ul li a:hover,
a:hover, #header a:hover, .dropdown:hover .expand-more
{
	color:{$lab_cbgcolor} ;
}

/* background-color:#6fc138 */
.laberProductGrid .laberQuickview a:hover,
#product .laberTabs .nav-tabs .nav-link.active, 
#product .laberTabs .nav-tabs .nav-link:hover,
.has-discount .discount, .laberProduct .has-discount .discount,
.laberProductList .laberCart .laberBottom,
.laberProductList .laberCart .laberBottom:hover, .laberProductList .laberItem a:hover,
.pagination a:not(.previous):not(.next):hover, .pagination .page-list li.current a,
#newsletter_block_popup .block_content .send-reqest,
.laberPopupnewsletter-i .close,
.quickview .social-sharing li a:hover, .laberProduct .social-sharing li a:hover,
.btn-primary.focus, .btn-primary:focus, .btn-primary:hover,
#header .laber-cart .cart_block .cart-buttons a:hover,
.laberUserInfo .laber-user-info .signin,
.search-widget form button[type="submit"],
.title_block h3 a::after, .title_block h3 span::after,
.title_block h3 a, .title_block h3 span,
.mypresta_scrollup:hover,
#laberSocialBlock ul li a:hover,
.block_newsletter form input[type="submit"],
.laberColumn .item-inner .item .discount-product,
.laberActions .laberCart .laberBottom:hover, .laberActions .laberItem a:hover,
.laberActions .laberCart .laberBottom,
.lab-nivoSlideshow .nivo-prevNav:hover, .lab-nivoSlideshow .nivo-nextNav:hover,
.nivo-controlNav a.active,
.container_lab_megamenu,
#header .laber-cart a .cart-products-count
{
	background-color:{$lab_cbgcolor}
}
/* border-color:#6fc138 */

.laberProductList .laberCart .laberBottom,
.laberProductList .laberCart .laberBottom:hover, .laberProductList .laberItem a:hover,
.pagination a:not(.previous):not(.next):hover, .pagination .page-list li.current a,
.quickview .social-sharing li a:hover, .laberProduct .social-sharing li a:hover,
#product-modal .modal-content .modal-body .product-images img:hover, 
.product-images > li.thumb-container > .thumb.selected, 
.product-images > li.thumb-container > .thumb:hover,
#header .laber-cart .cart_block .cart-buttons a:hover,
#header .laber-cart .dropdown-menu,
.lab-menu-vertical .menu-vertical,
.block_newsletter form input[type="email"]:focus,
.block_newsletter form input[type="submit"],
.laberActions .laberCart .laberBottom:hover, .laberActions .laberItem a:hover,
.laberActions .laberCart .laberBottom,
.title_block h3,
.nivo-controlNav a.active
{
	border-color:{$lab_cbgcolor}
}
.se-pre-con span{
	border-left: 2px solid {$lab_cbgcolor};
}
.form-control:focus, .input-group.focus {
    outline: 1px solid {$lab_cbgcolor};
}

{/if}
</style>
{/if}
{if $labshowthemecolor == 1 }
			{if $labthemecolor && $labthemecolor !='default'}
				<link rel="stylesheet" type="text/css" href="{$urls.base_url}themes/{$LAB_THEMENAME}/assets/css/color/{$labthemecolor}.css" />
			{/if}
        {if $labskin }
			<style type="text/css">
				body{
					background-image: url("{$urls.base_url}modules/labthemeoptions/views/templates/front/colortool/images/pattern/{$labskin}.png") ;
				}
			</style>
        {/if}
{/if}