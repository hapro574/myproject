
<!-- BEGIN: main -->
<div class="menutag" >
    <ul>
        <li><a title="{LANG.Home}" href="{THEME_SITE_HREF}"> <span class="hidden-sm"> {LANG.Home} </span></a></li>
        
        <!-- BEGIN: footer_menu -->
        
        <li{footer_menu.current}>
        
            <!-- BEGIN: icon --> 
            <img src="{FOOTER_MENU.icon}" />&nbsp; 
            <!-- END: icon --> 
            <a title="{FOOTER_MENU.note}" href="{FOOTER_MENU.link}"{FOOTER_MENU.target}>| {FOOTER_MENU.title_trim}</a> 
            
            <!-- BEGIN: cat2 -->
            <ul>{HTML_CONTENT}</ul> 
            <!-- END: cat2 -->
            
        </li>
        
       <!-- END: footer_menu -->
       
    </ul>
</div>
<!-- END: main -->

