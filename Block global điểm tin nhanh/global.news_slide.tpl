<!-- BEGIN: main -->

<!-- BEGIN: type1 -->
<!-- BEGIN: loop -->
<div>
	<p>
		<a  title href="{ROW.link}" {ROW.target_blank} >{ROW.title_clean}</a>
	</p>
</div>
<!-- END: loop -->
<!-- END: type1 -->



<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='catgtitlebox'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#carouselhAuto').jsCarousel({
            autoscroll : true,
            itemstodisplay : 1,
            orientation : 'h'
        });
    });
</script>
<!-- END: tooltip -->

<!-- END: main -->