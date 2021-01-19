<!-- BEGIN: main -->
<div class="block-law marquee" id="style-3" data-direction="up" data-duration="50000" data-pauseonhover="true" data-duplicated="true" style="height: 332px;overflow: scroll;width:100%;" <!-- BEGIN: marquee_data -->data-direction='{DATA.direction}' data-duration='{DATA.duration}' data-pauseOnHover="{DATA.pauseOnHover}" data-duplicated="{DATA.duplicated}" style="height: 200px; overflow: hidden;"<!-- END: marquee_data --> >
	<!-- BEGIN: loop -->
	<div class="m-bottom">
		<h3>
			<a href="{ROW.link}" title="">{ROW.title}</a>
		</h3>
        <em class="text-muted">{ROW.code} - {ROW.addtime}</em>
	</div>
	<!-- END: loop -->
</div>
<!-- BEGIN: marquee_js -->
<script type='text/javascript' src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/laws_jquery.marquee.js'></script>
<script type="text/javascript">
	$('.marquee').marquee();
</script>
<!-- END: marquee_js -->

<!-- END: main -->