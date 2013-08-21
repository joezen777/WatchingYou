<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Watching You The Series
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="halfLeftBody">
    <h1 class="subTitle">New Comedy Series<br />Coming Soon!</h1>
    <p class="indentP">A comedy series about the afterlife of the world's biggest asshole. The only way he can avoid hell is to become the Guardian of the nerdiest, socially awkward girl alive... He should have considered hell.</p>
    <h3 class="subTitle">Santikos Red Carpet<br />was a huge success!</h3>
    <p class="indentP">Our red carpet premiere at Santikos Palladium was a huge success.  Over 300 people saw the Watching You pilot, one of the most funny upcoming comedy show.  Like us on <a href="http://www.facebook.com/watchingyouseries" target="_blank">Facebook</a> to stay tuned for more Watching You news.</p>
    <a class="columnImage" href="http://www.facebook.com/watchingyouseries" target="_blank" ><img alt="Watching You TV Show" src="<%= Url.Content("~/Content/Watching You Tv Show.jpg") %>" /></a>
    </div>
    <div class="halfRightBody">
    <h1 class="subTitle">Get a Sneak Peak!
    </h1>

    <ul><li><h5><a class="youTubeLink" href="http://www.youtube.com/watch?v=sl3FMsKvJCE" target="_blank">Watching You Episode 1</a></h5><div class="glowThis"><a class="youTubeLink" href="http://www.youtube.com/watch?v=sl3FMsKvJCE" target="_blank"><img alt="Watching You Episode 1" width="200px" src="<%= Url.Content("~/Content/trailerpic.jpg") %>" /></a></div></li>
<li><h5><a class="youTubeLink" href="http://www.youtube.com/watch?v=bEt_tQlWo-M" target="_blank">Watching You Series Trailer</a></h5><div class="glowThis"><a class="youTubeLink" href="http://www.youtube.com/watch?v=bEt_tQlWo-M" target="_blank"><img alt="Watching You Trailer" width="200px" src="<%= Url.Content("~/Content/teaserpic.jpg") %>" /></a></div></li>
    </ul>
    <a href="http://watchingyouseries.wordpress.com/" target="_blank"><h1 class="subTitleBlue">Director's Blog</h1></a>
    <h2 class="subTitle">Comedy Series News</h2>
    <ul>
        <li><a href="http://www.cmt.com/videos/mixtape-a-short-film-inspired-by-eric-churchs-springsteen/1688811/full-episode.jhtml" target="_blank">Watching You stars, Johnny Walter and Kelsey Pribilski, star in Eric Church's Springsteen video.</a></li>
        <li><a href="http://safilm.com/2012-schedule/" target="_blank">San Antonio Film Festival is sponsoring a free Watching You event!</a></li>
        <li><a href="http://www.examiner.com/article/watching-you-gives-angelic-twist-to-familiar-tv-sit-com-theme" target="_blank">Examined by the Examiner</a></li>
        <li><a href="http://www.imdb.com/title/tt2163050/" target="_blank">IMDB factualized and indexed us</a></li>
        <li><a href="http://blog.mysanantonio.com/artbeat/2012/05/get-a-big-screen-peek-at-the-new-web-series-watching-you/" target="_blank">Deborah Martin, San Antonio Express-News columnist, blogged about us</a></li>
    </ul>
    </div>
    
</asp:Content>
