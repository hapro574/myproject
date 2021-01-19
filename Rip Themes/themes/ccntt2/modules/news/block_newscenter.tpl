<!-- BEGIN: main -->
<div id="hot-news">
    <div class="panel panel-default news_column">
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-10 col-md-13 margin-bottom-lg">
                    <div class="margin-bottom text-center">
                        <a href="{main.link}" title="{main.link}"{main.target_blank}><img src="{main.imgsource}" alt="{main.title}" width="{main.width}" class="img-thumbnail" /></a>
                    </div>
                    <h3 class="margin-bottom-sm">
                        <a href="{main.link}" title="{main.title}"{main.target_blank}>{main.titleclean60}</a>
                    </h3>
                    {main.hometext}
                </div>
                <div class="hot-news-others col-sm-14 col-md-11 margin-bottom-lg">
                    <ul class="column-margin-left list-none">
                        <!-- BEGIN: othernews -->
                        <li class="clearfix list_news">
                            <h3>
                                <a title="" href="{othernews.link}"{othernews.target_blank}>{othernews.titleclean60}</a>
                            </h3> <a href="{othernews.link}" title=""><img src="{othernews.imgsource}" alt="{othernews.title}" width="90" class="img-thumbnail fl"></a>
                            <p>{main.hometext}</p>
                        </li>
                        <!-- END: othernews -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: main -->
