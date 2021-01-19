<!-- BEGIN: main -->
{FILE "header_only.tpl"} {FILE "header_extended.tpl"}
<div class="row">[HEADER]</div>
<div class="row">
    <div class="col-sm-18 col-md-18 col-xs 24">[BLOCK_NEW]</div>
    <div class="col-sm-6 col-md-6 col-xs 24">[BLOCK_BANNERS]</div>
</div>
<div class="row">
   
   <div class="col-sm-18 col-md-17 col-sm-push-6 col-md-push-7">[TOP] {MODULE_CONTENT} [BOTTOM]</div>
    <div class="col-sm-6 col-md-7 col-sm-pull-18 col-md-pull-17">[LEFT]</div> 
</div>
<div class="row">[FOOTER]</div>
{FILE "footer_extended.tpl"} {FILE "footer_only.tpl"}
<!-- END: main -->