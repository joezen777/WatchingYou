<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Watching You Series characters
</asp:Content>

<asp:Content ID="castContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="subTitle">
        The Cast</h1>
    <div class="subTitleBody">
        <div id="castPicHolder">
            <a class="youTubeLink" href="http://www.youtube.com/watch?v=gvUqmimsGcU&feature=plcp" target="_blank"><div id="johnny" class="grouppic"></div></a>
            <a class="youTubeLink" href="http://www.youtube.com/watch?v=hLs_ZC2KjlQ&feature=plcp" target="_blank"><div id="kelsey" class="grouppic"></div></a>
            <a class="youTubeLink" href="http://www.youtube.com/watch?v=CRNc1A7KkBA&feature=plcp" target="_blank"><div id="elle" class="grouppic"></div></a>
            <a class="youTubeLink" href="http://www.youtube.com/watch?v=VTZzz-LiFio&feature=plcp" target="_blank"><div id="brennan" class="grouppic"></div></a>
            <a class="youTubeLink" href="http://www.youtube.com/watch?v=T4hP5RwQCYw" target="_blank"><div id="jenn" class="grouppic"></div></a>
            <a class="youTubeLink" href="http://www.youtube.com/watch?v=urEDgjzPzns&feature=plcp" target="_blank"><div id="jerdee" class="grouppic"></div></a>
        </div>
    </div>
    <div class="halfLeftBody">
        <h1 class="subTitle">
            Additional Cast
        </h1>
        <ul>
            <li>
                <div class="eightTenPic"><img alt="Bill Gundry" src="<%= Url.Content("~/Content/cast/bill_cast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Bill Gundry</h4><br /><h5>as Doctor</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Brant Bumpers" src="<%= Url.Content("~/Content/cast/brant_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Brant Bumpers</h4><br /><h5>as Homeless Guy</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Michael Burger" src="<%= Url.Content("~/Content/cast/michael_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Michael Burger</h4><br /><h5>as Michael</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Morgan Clyde" src="<%= Url.Content("~/Content/cast/morgan_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Morgan Clyde</h4><br /><h5>as Nurse</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Kelli Grant" src="<%= Url.Content("~/Content/cast/kelli_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Kelli Grant</h4><br /><h5>as Mother</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="David Dean Gomez" src="<%= Url.Content("~/Content/cast/david_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>David Dean Gomez</h4><br /><h5>as Juan</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Roman Garcia" src="<%= Url.Content("~/Content/cast/roman_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Roman Garcia</h4><br /><h5>as Man</h5></div>
            </li>
            
            <li>
                <div class="eightTenPic"><img alt="Sandy Garza" src="<%= Url.Content("~/Content/cast/sandy_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Sandy Garza</h4><br /><h5>as Destiny</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Sarah Karlberg" src="<%= Url.Content("~/Content/cast/sarah_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Sarah Karlberg</h4><br /><h5>as Kid</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Tyler Keyes" src="<%= Url.Content("~/Content/cast/tyler_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Tyler Keyes</h4><br /><h5>as Xercsis</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Bob Perrill" src="<%= Url.Content("~/Content/cast/robert_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Robert Perrill</h4><br /><h5>as Keith Parker</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Alex Poncio" src="<%= Url.Content("~/Content/cast/alex_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Alex Poncio</h4><br /><h5>as Intern #1</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Lizzie Poncio" src="<%= Url.Content("~/Content/cast/lizzie_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Lizzie Poncio</h4><br /><h5>as Angie</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Ryan Quijano" src="<%= Url.Content("~/Content/cast/ryan_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Ryan Quijano</h4><br /><h5>as Intern #2</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="Charles Riley" src="<%= Url.Content("~/Content/cast/charles_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Charles Riley</h4><br /><h5>as David</h5></div>
            </li>
            <li>
                <div class="eightTenPic"><img alt="John Thomas and Taquito the dog" src="<%= Url.Content("~/Content/cast/johnt_bcast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>John Thomas</h4><br /><h5>as Neighbor</h5></div>
            </li>
        </ul>
    </div>
    <div class="halfRightBody">
        <h1 class="subTitle">Videos
        </h1>
        <ul>
            <li>
            <div class="glowThis">
            <a class="youTubeLink" href="http://www.youtube.com/watch?v=VTZzz-LiFio&feature=plcp" target="_blank"><img width="200" alt="I Like Watching You On Facebook - The Cast" src="<%= Url.Content("~/Content/cast/ilwyofb_cast.jpg") %>" /></a>
            </div>
            </li>
        </ul>
    </div>
</asp:Content>
