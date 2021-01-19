<!-- BEGIN: main -->
<!-- BEGIN: loop -->
<div>
    <p>
   <!-- BEGIN: img --> 
        <a href="{ROW.link}" title="{ROW.title}"{ROW.target_blank} >
            {ROW.title_clean}
        </a> 
   <!-- END: img -->
    </p>
</div>
 <!-- END: loop --> 


<!-- BEGIN: tooltip -->
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
