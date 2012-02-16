<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    <div id="comments"></div>
    <script type="text/javascript">
    
    // $(document).ready(function(){

    jQuery.ajax({
        url: "http://gdata.youtube.com/feeds/api/videos/hLs_ZC2KjlQ/comments?v=2&alt=json&max-results=50",  
        //gets the max first 50 results.  To get the 'next' 50, use &start-index=50
        dataType: "jsonp",
        success: function(data){
            $.each(data.feed.entry, function(key, val) {

                comment = $("<div class='comment'></div>");

                author = $("<a target='_blank' class='youtube_user'></a>");
                author.attr("href", "http://youtube.com/user/" + val.author[0].name.$t);
                author.html(val.author[0].name.$t);

                content = $("<div style='font-size: 14px;' class='content'></div>");
                content.html(val.content.$t);

                comment.append(author).append(content);
                $('#comments').append(comment);
            });
        }
    });
    //});
    </script>
    <p>
        To learn more about ASP.NET MVC visit <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
    </p>
</asp:Content>
