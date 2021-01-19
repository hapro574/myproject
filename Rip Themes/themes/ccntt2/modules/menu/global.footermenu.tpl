<!-- BEGIN: main -->
<div class="menutag" >
    <ul>
        <li><a title="{LANG.Home}" href="{THEME_SITE_HREF}"> <span class="hidden-sm"> {LANG.Home} </span></a></li>
        <!-- BEGIN: loopcat1 -->
        <li{CAT1.class}>
            <!-- BEGIN: icon --> <img src="{CAT1.icon}" />&nbsp; <!-- END: icon --> <a title="{CAT1.note}" href="{CAT1.link}"{CAT1.target}>| {CAT1.title_trim}</a> <!-- BEGIN: cat2 -->
            <ul>{HTML_CONTENT}
            </ul> <!-- END: cat2 -->
        </li>
        <!-- END: loopcat1 -->
    </ul>
</div>
<!-- END: main -->
