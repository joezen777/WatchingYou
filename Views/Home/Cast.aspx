<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="castTitle" ContentPlaceHolderID="TitleContent" runat="server">
    The Cast of Watching You
</asp:Content>

<asp:Content ID="castContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        var selectHolder = '#castPicHolder';
        var dataIdx = 'idx';
        $(document).ready(function () {
            bindTriangles();
            var newPicId = 'johnny';
            preLoadImages();
            showNewPic(newPicId, 'right');
            $("#castList").hide();
        });

        function showNewPic(newPicId,caller) {
            $(selectHolder).data(dataIdx, newPicId);
            showOrNotShowCursor();

            var newHeadShotUrl = "url('../Content/cast/cast_" + newPicId + "_a.jpg')";
            var newFilmStillUrl = "url('../Content/cast/cast_" + newPicId + "_b.jpg')";
            var newTitleUrl = "url('../Content/cast/cast_" + newPicId + "_c.jpg')";

            
            var effectType = 'slide';
            var effectTime = 500;
            var option1 = {};
            var option2 = {};

            if (caller == 'right') {
                option1 = { direction: 'left' };
                option2 = { direction: 'right' };
            }
            else {
                option1 = { direction: 'right' };
                option2 = { direction: 'left' };
            }
 
            
            var imgLoadDelay = '50';
            var selectThis = '#headShotBox';
            $(selectThis).hide(effectType, option1, effectTime, function () { $(this).css({ 'background-image': newHeadShotUrl }).delay(imgLoadDelay).show(effectType, option2, effectTime, function () { }) });
            selectThis = '#filmStillBox';
            $(selectThis).hide(effectType, option1, effectTime, function () { $(this).css({ 'background-image': newFilmStillUrl }).delay(imgLoadDelay).show(effectType, option2, effectTime, function () { }) });
            selectThis = '#titleBox';
            $(selectThis).hide(effectType, option1, effectTime, function () { $(this).css({ 'background-image': newTitleUrl }).delay(imgLoadDelay).show(effectType, option2, effectTime, function () { }) });

            showBio(newPicId);
        }

        function showBio(newPicId) {
            var newPicSelector = '#' + newPicId + ' p';
            var newActorNameSelector = '#' + newPicId + ' h4';
            var newActorName = $(newActorNameSelector).html();
            var newBioText = $(newPicSelector).html();
            $(".actorBio").effect("fade", {}, 250, function () {
                $(this).children('p').html(newBioText);
                $(this).children('h3').html(newActorName);
                $(this).fadeIn();
            });
        }

        function preLoadImages() {
            $("#castList li").each(function (index) {
                var thisId = $(this).attr('id');
                var newTitleUrl = "url('../Content/cast/cast_" + thisId + "_c.jpg')";
                var newFilmStillUrl = "url('../Content/cast/cast_" + thisId + "_b.jpg')";
                $(this).children(".filmStill").css({ 'background-image': newTitleUrl });
                $(this).children(".filmStill").css({ 'background-image': newFilmStillUrl });
            });
        }

        function bindTriangles() {
            $(".rightTriangle").click(function () {
                var currentIdx = ('#' + $(selectHolder).data(dataIdx));
                var nextSib = $(currentIdx).next("li");
                var newPicId = nextSib.attr('id');
                showNewPic(newPicId,'right');
                return false;
            });
            $(".leftTriangle").click(function () {
                var currentIdx = ('#' + $(selectHolder).data(dataIdx));
                var nextSib = $(currentIdx).prev("li");
                var newPicId = nextSib.attr('id');
                showNewPic(newPicId,'left');
                return false;
            });
            
            
        }

        function showOrNotShowCursor() {
            var currentIdx = ('#' + $(selectHolder).data(dataIdx));
            var nextSib = $(currentIdx).next("li");
            
            var prevSib = $(currentIdx).prev("li");
            
            if (prevSib.attr('id') == null) {
                $(".leftTriangle").hide();
            }
            else
                $(".leftTriangle").show();
            if (nextSib.attr('id') == null) {
                $(".rightTriangle").hide();
            }
            else
                $(".rightTriangle").show();
        }
    </script>
    <h1 class="subTitle">
        The Cast</h1>
    <div class="subTitleBody">
        <div id="castPicHolder">
            <div id="filmStillBox" class="filmStillShow"></div>
            <div id="headShotBox" class="headShotShow"></div>
            <div id="titleBox" class="titleShow"></div>
            <div class="leftTriangle"></div>
            <div class="rightTriangle"></div>
        </div>
        <div class="actorBio">
        <h3></h3>
        <p></p>
        </div>
    </div>
    <div class="halfLeftBody">
        <ul id="castList">
            <li id="johnny">
                <div class="eightTenPic"><img alt="Johnny Walter" src="<%= Url.Content("~/Content/cast/cast_johnny_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Johnny Walter</h4><br /><h5>as Taylor</h5></div>
                <p>
                Johnny Walter, the son of a investigative-news producer and a biology professor, started pursuing acting at the age of 13 while growing up in Miami, FL. He attended New World School of the Arts, a performing arts high-school, and acted in a variety of theatrical productions ranging from "The Government Inspector" to "The Crucible"; where he would play the tragically flawed John Proctor. In 2000, following graduation, Johnny applied and was accepted into The Goodman Theatre School for his BFA. While there, he built up a diverse resume including roles in "Romeo and Juliet", "Brighton Beach Memoirs", and "Three Sister". He subsequently went on to perform and study in various workshops within the Chicago theatre community, working at theatre's from Chicago Shakespeare Theatre to the Steppenwolf Theatre Company.
<br /><br />After pursuing theatre for over 10 years, Johnny decided to take a sabbatical from performing to travel and start to gain 'life-experience'. He ended up moving to be closer with his family in Austin, TX and learned a variety of skill-trades while retaining vast knowledge; such as becoming a welder, a teacher, a fish-monger, a clinical-assistant, and a carpenter. He believed that in order to fully achieve understanding about people, you have to experience what people do and who they are. After 3-4 years of living without his art, it was time to dive back into his passion.
<br /><br />2010 was a good year for Johnny, not just because it was the year he decided to go back into the art-form he loved, but it was also the year he had his first film debut in the Horror-flick Boneboys (2012). Since that, Johnny's film career has started to make an impact with him booking roles in feature films such as A Swingin Trio (2012), Out of the Darkness (2012), and The Cain Complex (2013). Feeling humbled and blessed by everything that comes his way, there seems to be only bigger and better things awaiting this versatile talent.
                </p>
                <div class="filmStill"></div>
            </li>
            <li id="kelsey">
                <div class="eightTenPic"><img alt="Kelsey Pribilski" src="<%= Url.Content("~/Content/cast/cast_kelsey_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Kelsey Pribilski</h4><br /><h5>as Jessica Parker</h5></div>
                <p>Kelsey Pribilski is 21 years old and currently in pursuit of a Film, Television and Radio Degree in Austin, Texas. She is an Army brat that spent her formative years in Central Texas. She started acting in theater productions at the age of 9 but made her way to film shortly after graduating high school when she decided to move to Austin to pursue a career. Her dream is to be a successful actress. She is single and looking.... ;) </p>
                <div class="filmStill"></div>
            </li>
            <li id="robert">
                <div class="eightTenPic"><img alt="Robert Jerdee" src="<%= Url.Content("~/Content/cast/cast_robert_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Robert Jerdee</h4><br /><h5>as Hal Miller</h5></div>
                <p>Robert was born in East L.A. As a child he was on the streets selling nick nacks and pattiwacks to get money for his family. He finally saved up enough for a bus ride to Texas, where he was able to find his true passion working at a Discount Tire. When a local theater producer came in one day to get a new set of tires, he spotted Robert and said “By god, what a face!” He recruited him for a staging of CATS and Robert has been climbing the San Antonio Theater ladder ever since. He recently broke into film as well, and now embodies the great character in ‘Watching You’ of Hal Miller Junior Jr.</p>
                <div class="filmStill"></div>
            </li>
            <li id="bill">
                <div class="eightTenPic"><img alt="Bill Gundry" src="<%= Url.Content("~/Content/cast/bill_cast.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Bill Gundry</h4><br /><h5>as Doctor</h5></div>
                <p>For the over twenty years, Bill Gundry has worked as both an actor and director on theatre stages, in television and film. His work in both areas has been seen in Los Angeles, San Francisco, New York, Atlanta, and especially in numerous cities across Texas including Dallas, Houston and San Antonio. As a mainstay in the theatre in San Antonio, he has won the Alamo City Arts  award for “Best Actor” a record-setting seven times. 
<br /><br />As a director, two of his productions (The Last Night of Ballyhoo and How I Learned to Drive) were recognized by the San Antonio Express-News as being among the Top Plays of 2000. In addition to directing in the community, he has brought his talent and experience back to students, directing productions at The University of the Incarnate Word and Trinity University in San Antonio, as well as the University of Houston and Texas Southern University in Houston. 
<br /><br />Bill’s distinct voice can be heard in a variety of television and radio commercials, with a client list that includes Builders Square, Team Chevy, Auto Zone, Union Carbide, Coca Cola, and The Santa Clara Police Department. He has also worked as an On-Air Personality in radio, covering classical music to rock and roll, as well as being the host of his own talk show “About the Arts”.
<br /><br />Bill Gundry currently resides in San Antonio, Texas. 
</p>
                <div class="filmStill"></div>
            </li>
            <li id="jenn">
                <div class="eightTenPic"><img alt="Jennifer Cundiff" src="<%= Url.Content("~/Content/cast/cast_jenn_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Jennifer Cundiff</h4><br /><h5>as Zoey</h5></div>
                <p>
                Jennifer Cundiff, not only an actress but a modern day super hero, she feeds the hungry, clothes the naked, and helps the needy. When she isn’t out saving lives, or passing out drinks to first class as a flight attendant, she is busy acting and looking attractive. She plays Zoey the hot office slut who is looking out for her and her alone in ‘Watching You’. Though Jennifer is nothing like Zoey, she embraces the role, and jumps into character with ease. One fun fact about her is that she eats celery with two hands like a cute little bunny. True story.
                </p>
                <div class="filmStill"></div>
            </li>
            <li id="elle">
                <div class="eightTenPic"><img alt="Elle LaMont" src="<%= Url.Content("~/Content/cast/cast_elle_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Elle LaMont</h4><br /><h5>as Denise</h5></div>
                <p>Elle LaMont is an actress out of Austin, Texas.  Last year, she was nominated for Best Actress at the Long Island International Film Festival and the Tulsa International Film Festival for her role as &quot;Chavine&quot; in Mark Dennis and Ben Foster's award-winning feature film, &quot;STRINGS&quot;.</p>
                <div class="filmStill"></div>
            </li>
            <li id="brennan">
                <div class="eightTenPic"><img alt="Brennan Loy" src="<%= Url.Content("~/Content/cast/cast_brennan_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Brennan Loy</h4><br /><h5>as Evan</h5></div>
                <p>Brennan Loy was born and raised in San Antonio, and has been involved in theatre for all of his high school career. He starred in multiple Brandeis High School productions, including Rumors, Footloose, Little Shop of Horrors, Grapes of Wrath, and Theophilus North, and was also a cast member of the UIL One Act Play competition State qualifying show, After Juliet.<br /><br />He has recently become involved with The Overtime Theater in San Antonio, as a part of both the Captain Cortez and the Tri-Lambda Brigade series and The Denials improv troupe. He has dabbled in film as well, as a part of the Watching You TV pilot, and the pilot for A Book by its Cover. He graduated from Brandeis in June of 2012, and is planning to study Communications at UTSA. He is excited to continue his involvement in San Antonio's film and theatre community in the coming years!</p>
                <div class="filmStill"></div>
            </li>
            <li id="brant">
                <div class="eightTenPic"><img alt="Brant Bumpers" src="<%= Url.Content("~/Content/cast/cast_brant_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Brant Bumpers</h4><br /><h5>as Homeless Guy</h5></div>
                <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="michael">
                <div class="eightTenPic"><img alt="Michael Burger" src="<%= Url.Content("~/Content/cast/cast_michael_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Michael Burger</h4><br /><h5>as Michael</h5></div>
                <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="morgan">
                <div class="eightTenPic"><img alt="Morgan Clyde" src="<%= Url.Content("~/Content/cast/cast_morgan_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Morgan Clyde</h4><br /><h5>as Nurse</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="kelli">
                <div class="eightTenPic"><img alt="Kelli Grant" src="<%= Url.Content("~/Content/cast/cast_kelli_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Kelli Grant</h4><br /><h5>as Mother</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="david">
                <div class="eightTenPic"><img alt="David Dean Gomez" src="<%= Url.Content("~/Content/cast/cast_david_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>David Dean Gomez</h4><br /><h5>as Juan</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="roman">
                <div class="eightTenPic"><img alt="Roman Garcia" src="<%= Url.Content("~/Content/cast/cast_roman_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Roman Garcia</h4><br /><h5>as Man</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="sandy">
                <div class="eightTenPic"><img alt="Sandy Garza" src="<%= Url.Content("~/Content/cast/cast_sandy_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Sandy Garza</h4><br /><h5>as Destiny</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="sarah">
                <div class="eightTenPic"><img alt="Sarah Karlberg" src="<%= Url.Content("~/Content/cast/cast_sarah_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Sarah Karlberg</h4><br /><h5>as Kid</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="tyler">
                <div class="eightTenPic"><img alt="Tyler Keyes" src="<%= Url.Content("~/Content/cast/cast_tyler_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Tyler Keyes</h4><br /><h5>as Xercsis</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="bob">
                <div class="eightTenPic"><img alt="Bob Perrill" src="<%= Url.Content("~/Content/cast/cast_bob_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Robert Perrill</h4><br /><h5>as Keith Parker</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="alex">
                <div class="eightTenPic"><img alt="Alex Poncio" src="<%= Url.Content("~/Content/cast/cast_alex_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Alex Poncio</h4><br /><h5>as Intern #1</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="lizzie">
                <div class="eightTenPic"><img alt="Lizzie Poncio" src="<%= Url.Content("~/Content/cast/cast_lizzie_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Lizzie Poncio</h4><br /><h5>as Angie</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="ryan">
                <div class="eightTenPic"><img alt="Ryan Quijano" src="<%= Url.Content("~/Content/cast/cast_ryan_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Ryan Quijano</h4><br /><h5>as Intern #2</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="charles">
                <div class="eightTenPic"><img alt="Charles Riley" src="<%= Url.Content("~/Content/cast/cast_charles_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>Charles Riley</h4><br /><h5>as David</h5></div>
                            <p></p>
                <div class="filmStill"></div>
            </li>
            <li id="johnt">
                <div class="eightTenPic"><img alt="John Thomas and Taquito the dog" src="<%= Url.Content("~/Content/cast/cast_johnt_a.jpg") %>" /></div>
                <div class="eightTenPicCaption"><h4>John Thomas</h4><br /><h5>as Neighbor</h5></div>
                            <p></p>
                <div class="filmStill"></div>
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
