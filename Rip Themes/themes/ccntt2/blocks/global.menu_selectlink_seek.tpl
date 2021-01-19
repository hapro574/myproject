     <!-- BEGIN: main -->
<select class="form-control " id="select">
    <option value="">Lựa chọn website...</option>
    <!-- BEGIN: top_menu -->
     <option value= "{TOP_MENU.link}" {TOP_MENU.target}> -> {TOP_MENU.title_trim}</option>
    	<!-- END: top_menu -->
</select>



<script type="text/javascript">
    $(function() {
        $('#select').bind('change', function() {
            var url = $(this).val();
            if (url) {
                window.open(url, '_blank');
            }
            return false;
        });
    }); 
</script>

<!-- END: main -->