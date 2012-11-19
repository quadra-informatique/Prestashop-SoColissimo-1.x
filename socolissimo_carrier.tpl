{*
*  1997-2012 QUADRA INFORMATIQUE
*
*  @author QUADRA INFORMATIQUE <ecommerce@quadra-informatique.fr>
*  @copyright 1997-2012 QUADRA INFORMATIQUE
*  @version  Release: $Revision: 1.0 $
*  @license  http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  
*}
<script type="text/javascript" src="{$content_dir}modules/socolissimo/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript">
{literal}

	function change_action_form() {
			if ($('#id_carrier{/literal}{$id_carrier}{literal}').is(':not(:checked)'))
			{
				$('#form').attr("action", 'order.php');
			}
			else
			{
				$('#form').attr("action", '{/literal}{$urlSo}{literal}');
			}
		}

	$(document).ready(function()
	{
		$('input[name=id_carrier]').change(function() {
			change_action_form();
		});
		change_action_form();
	});
{/literal}
</script>
{foreach from=$inputs item=input key=name name=myLoop}
		<input type="hidden" name="{$name|escape:'htmlall':'UTF-8'}" value="{$input|strip_tags|addslashes}"/>
{/foreach}
