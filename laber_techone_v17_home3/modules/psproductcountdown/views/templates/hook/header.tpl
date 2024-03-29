{**
* NOTICE OF LICENSE
*
* This file is licenced under the Software License Agreement.
* With the purchase or the installation of the software in your application
* you accept the licence agreement.
*
* @author    Presta.Site
* @copyright 2016 Presta.Site
* @license   LICENSE.txt
*}
<!-- module psproductcountdown start -->
<script type="text/javascript">
    {if $show_weeks}
        var pspc_labels = ['weeks', 'days', 'hours', 'minutes', 'seconds'];
        var pspc_labels_lang = {
            'weeks': '{l s='weeks' d='Shop.Theme.Laberthemes'}',
            'days': '{l s='days' d='Shop.Theme.Laberthemes'}',
            'hours': '{l s='hours' d='Shop.Theme.Laberthemes'}',
            'minutes': '{l s='minutes' d='Shop.Theme.Laberthemes'}',
            'seconds': '{l s='seconds' d='Shop.Theme.Laberthemes'}'
        };
    {else}
    var pspc_labels = ['days', 'hours', 'minutes', 'seconds'];
    var pspc_labels_lang = {
        'days': '{l s='days' d='Shop.Theme.Laberthemes'}',
        'hours': '{l s='hours' d='Shop.Theme.Laberthemes'}',
        'minutes': '{l s='minutes' d='Shop.Theme.Laberthemes'}',
        'seconds': '{l s='seconds' d='Shop.Theme.Laberthemes'}'
    };
    {/if}
    var pspc_show_weeks = {$show_weeks|intval};
    var pspc_psv = {$psv|floatval};
</script>
{if $custom_css}
    <style type="text/css">
        {$custom_css|escape:'quotes':'UTF-8'}
    </style>
{/if}
<!-- module psproductcountdown end -->