<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Shows filmed in San Antonio Texas
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1 class="subTitle">Making Movies in San Antonio</h1>
        <p class="indentP">Did we film in your neighborhood?  Check out the interactive Google map to see if one of our San Antonio film locations was in your neighborhood.</p>
        <div id="map" ></div>
    </div>
    <div class="halfLeftBody">
    <h1 class="subTitle">New Comedy Series<br />Coming Soon!</h1>
    <p class="indentP">A comedy series about the afterlife of the world's biggest asshole. The only way he can avoid hell is to become the Guardian of the nerdiest, socially awkward girl alive... He should have considered hell.</p>
    <h3 class="subTitle">Santikos Red Carpet<br />was a huge success!</h3>
    <p class="indentP">Our red carpet premiere at Santikos Palladium was a huge success.  Over 300 people saw the Watching You pilot, one of the most funny upcoming comedy show.  Like us on <a href="http://www.facebook.com/watchingyouseries" target="_blank">Facebook</a> to stay tuned for more Watching You news.</p>
    </div>
    <div class="halfRightBody">
    <h1 class="subTitle">Watch the trailer
    </h1>

    <ul>
        <li><h5><a class="youTubeLink" href="http://www.youtube.com/watch?v=f6mJLE6UgjY" target="_blank">Watching You Series Trailer</a></h5><div class="glowThis"><a class="youTubeLink" href="http://www.youtube.com/watch?v=f6mJLE6UgjY" target="_blank"><img alt="Watching You Trailer" width="200px" src="<%= Url.Content("~/Content/trailerpic.jpg") %>" /></a></div></li>
        <li><h5><a class="youTubeLink" href="http://www.youtube.com/watch?v=F8Hd7IlCv6o" target="_blank">Watching You Series Teaser</a></h5><div class="glowThis"><a class="youTubeLink" href="http://www.youtube.com/watch?v=F8Hd7IlCv6o" target="_blank"><img alt="Watching You Teaser" width="200px" src="<%= Url.Content("~/Content/teaserpic.jpg") %>" /></a></div></li>
        <li><p>For more information on film events and movies going on in San Antonio, check out the<br /><a href="http://www.visitsanantonio.com/film" target="_blank">San Antonio Film Commission</a></p></li>
    </ul>
    <h3 class="subTitle">Other businesses that support<br />film in San Antonio</h3>
    <ul>
        <li><a href="http://images-and-words.com/" target="_blank">San Antonio wedding photographer</a> (website and behind-the-scenes photos)</li>
        <li><a href="http://www.patiencephotography.com/" target="_blank">Austin wedding photographer</a> (movie poster photos)</li>
        <li><a href="http://www.facebook.com/joseph.a.flores.12/info" target="_blank">Joseph Flores - photographer</a> (red carpet photos)</li>
        <li><a href="http://pin-upparlorsa.com" target="_blank">Pin-up Parlor SA (they do t-shirts too)</a></li>
        <li><a href="http://www.lolsanantonio.com" target="_blank">San Antonio comedy club</a></li>
    </ul>
    
    </div>
    <script type="text/javascript"">
        $(document).ready(function () {
            //alert('this is called');
            var map;
            var centerPosition = new google.maps.LatLng(29.511928, -98.493462);
            var hitOnStreet = new google.maps.LatLng(29.559049, -98.637614);
            var hoHouse = new google.maps.LatLng(29.454714, -98.469847);
            var deHouse = new google.maps.LatLng(29.577353, -98.636166);
            var kkPlace = new google.maps.LatLng(29.569286, -98.479804);
            var jpPlace = new google.maps.LatLng(29.599217, -98.595482);
            var gvPlace = new google.maps.LatLng(29.418909, -98.466146);
            var hoPlace = new google.maps.LatLng(29.524718, -98.598905);

            var options = {
                'zoom': 10,
                'center': centerPosition,
                'mapTypeId': google.maps.MapTypeId.ROADMAP
            };

            map = new google.maps.Map(document.getElementById('map'), options);

            var circle1 = new google.maps.Circle({
                center: hitOnStreet,
                map: map,
                fillColor: '#FF8888',
                fillOpacity: 0.3,
                strokeColor: '#FF8888',
                strokeOpacity: .8,
                strokeWeight: 1
            });

            var circle2 = new google.maps.Circle({
                center: hoHouse,
                map: map,
                fillColor: '#FF8888',
                fillOpacity: 0.3,
                strokeColor: '#FF8888',
                strokeOpacity: .8,
                strokeWeight: 1
            });
            var circle3 = new google.maps.Circle({
                center: deHouse,
                map: map,
                fillColor: '#FF8888',
                fillOpacity: 0.3,
                strokeColor: '#FF8888',
                strokeOpacity: .8,
                strokeWeight: 1
            });
            var circle4 = new google.maps.Circle({
                center: kkPlace,
                map: map,
                fillColor: '#FF8888',
                fillOpacity: 0.3,
                strokeColor: '#FF8888',
                strokeOpacity: .8,
                strokeWeight: 1
            });
            var circle5 = new google.maps.Circle({
                center: jpPlace,
                map: map,
                fillColor: '#FF8888',
                fillOpacity: 0.3,
                strokeColor: '#FF8888',
                strokeOpacity: .8,
                strokeWeight: 1
            });
            var circle6 = new google.maps.Circle({
                center: gvPlace,
                map: map,
                fillColor: '#FF8888',
                fillOpacity: 0.3,
                strokeColor: '#FF8888',
                strokeOpacity: .8,
                strokeWeight: 1
            });
            var circle7 = new google.maps.Circle({
                center: hoPlace,
                map: map,
                fillColor: '#FF8888',
                fillOpacity: 0.3,
                strokeColor: '#FF8888',
                strokeOpacity: .8,
                strokeWeight: 1
            });

            circle1.setRadius(1000);
            circle2.setRadius(1000);
            circle3.setRadius(1000);
            circle4.setRadius(1000);
            circle5.setRadius(1000);
            circle6.setRadius(1000);
            circle7.setRadius(1000);

            //map.fitBounds(circle.getBounds());

        });
            
 
</script>
</asp:Content>
