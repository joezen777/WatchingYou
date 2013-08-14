<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="btsTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Behind-The-Scenes on Watching You the series
</asp:Content>

<asp:Content ID="btsContent" ContentPlaceHolderID="MainContent" runat="server">
<br />
    <h1 class="subTitleBlue">Behind-The-Scenes</h1>
    <div>
    
    <div class="navFrame">
    <nav id="thumbs" ></nav></div>
    <div class="viewerFrame">
    <img alt="Watching You Behind The Scenes" id="viewer" />
    </div>
    <div class="viewerCaption"><p class="indentP"></p></div>
    <script type="text/javascript">
        (function (gallery_id) {
            var title = $('h1'),
            viewer = $('#viewer'),
            thumbs = $('#thumbs');

            // album info
            $.getJSON('//graph.facebook.com/' + gallery_id + '?callback=?', function (json, status, xhr) {
                title.html('<a target="_blank" href="' + json.link + '">' + json.name + ' from ' + json.from.name + '</a>');
            });

            // images
            $.getJSON('//graph.facebook.com/' + gallery_id + '/photos?limit=150&callback=?', function (json, status, xhr) {
                var imgs = json.data;

                viewer.attr('src', imgs[0].images[2].source);
                $('.viewerCaption p').hide().html($('<div />').text((imgs[0].name == 'undefined' ? '' : imgs[0].name)).html()).fadeIn();

                for (var i = 0, l = imgs.length - 1; i < l; i++) {

                    var capt = $('<div />').text((imgs[i].name == 'undefined' ? '' : imgs[i].name)).html();
                    var newImg = $('<img alt="' + capt + '" src="' + imgs[i].images[2].source + '" data-fullsize="' + imgs[i].images[2].source + '">');
                    newImg.data('caption', capt);
                    if (i == 0)
                        newImg.css({ 'margin-left': '1px solid white' });
                    newImg.appendTo(thumbs);

                }

                $('img', thumbs).bind('click', function (e) {
                    e.preventDefault();
                    viewer.hide().attr('src', $(this).attr('data-fullsize')).attr('alt', newAlt);
                    if (viewer.height() > viewer.width())
                        viewer.css({ 'margin-left': '162px' });
                    else
                        viewer.css({ 'margin-left': '0px' });
                    $('#thumbs img').css({ 'border-left': '1px solid black' });
                    $(this).css({ 'border-left': '1px solid white' });
                    var newAlt = $(this).data('caption');

                    viewer.fadeIn();
                    $('.viewerCaption p').hide().html(newAlt).fadeIn();
                });
            });
        })('296476733749662');                          // let's go -- put the gallery ID here http://www.facebook.com/photo.php?fbid=304851316245537&set=a.296476733749662.76470.291601587570510&type=3&theater
    </script>
    </div>
        
    
    <div class="halfLeftBody">
    <h2 class="subTitle">Videos</h2>
    <ul>
        <li><a class="youTubeLink" href="http://www.youtube.com/watch?v=2vQEl7eNY_s" target="_blank"><h5>Casting Jessica Parker (Kelsey Pribilski)</h5></a></li>
    </ul>
    </div>
    <div class="halfRightBody">
    <a href="http://watchingyouseries.wordpress.com/" target="_blank"><h1 class="subTitleBlue">Director's Blog</h1></a>
    </div>
</asp:Content>
