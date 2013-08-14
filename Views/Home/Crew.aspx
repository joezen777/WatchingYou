<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="crewTitle" ContentPlaceHolderID="TitleContent" runat="server">
    The Crew of Watching You
</asp:Content>
<asp:Content ID="crewContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="subTitle">
        The Crew</h1>
    <div class="subTitleBody">
        <ul id="flipList">
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Joshua Thomas</h4>
					<p>Writer, Director, Editor, Executive Producer</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Joshua Thomas, Writer and Director|Joshua Thomas, Editor|Joshua Thomas, Executive Producer" src="<%= Url.Content("~/Content/crew/wy director photo.jpg") %>" /></div>
		    </div>
            </li>
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Scott Langford</h4>
					<p>Producer, 2nd AC</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Scott Langford, Producer|Scott Langford, 2nd AC" src="<%= Url.Content("~/Content/crew/Producer.jpg") %>" /></div>
		</div>
            </li>
            <li>
                <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Nichol Rodriguez</h4>
					<p>Producer, Craft Services</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Nichol Rodriguez, Producer|Nichol Rodriguez, Craft Services" src="<%= Url.Content("~/Content/crew/nichol_producer.jpg") %>" /></div>
		</div>
                    
            </li>
            <li>
                    <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Joseph Nielsen</h4>
					<p>Producer, Art Director</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Joseph Nielsen, Producer|Joseph Nielsen, Art Director" src="<%= Url.Content("~/Content/crew/joe_artdirector.jpg") %>" /></div>
		</div>
                    
            </li>
            <li>
                    <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Stephen Villela</h4>
					<p>Director of Photography</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Stephen Villela, Director of Photography|Stephen Villela, Why did you click twice?" src="<%= Url.Content("~/Content/crew/DP2b.jpg") %>" /></div>
		</div>
                    
            </li>
            <li>
                        <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Nico Wachter</h4>
					<p>Assistant Camera, Gaffer</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Nico Wachter, Assistant Camera|Nico Wachter, Gaffer" src="<%= Url.Content("~/Content/crew/AC.jpg") %>" /></div>
		</div>
                    
            </li>
            <li>
                      <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Shane Leal-Willet</h4>
					<p>Audio, Boom Operator</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Shane Leal-Willett, Audio|Shane Leal-Willet, Boom Operator" src="<%= Url.Content("~/Content/crew/Audio.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
                    <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Jonathan Schell</h4>
					<p>Prop Master, Set Design, Key makeup</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Jonathan Schell, Prop Master|Jonathan Schell, Makeup artist" src="<%= Url.Content("~/Content/crew/jonathan_propmakeup.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
                  <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Laura Evans</h4>
					<p>Key Wardrobe, Set Design</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Laura Evans, Wardrobe|Laura Evans, Set Decorator" src="<%= Url.Content("~/Content/crew/laura_wardrobe.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
                <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Skylar Brown</h4>
					<p>Script Supervisor</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Skylar Brown, Script Supervisor|Skyar Brown, Have you seen my car keys?" src="<%= Url.Content("~/Content/crew/ScriptSupervisor.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
              <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Caitlin Quinn</h4>
					<p>DIT, PA</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Caitlin Quinn, PA|Caitlin Quinn, DIT" src="<%= Url.Content("~/Content/crew/kaitlynn_padit.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Promise Jones</h4>
					<p>DIT, PA</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Promise Jones, PA|Promise Jones, DIT" src="<%= Url.Content("~/Content/crew/promise_pa.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Alyx Gonzales</h4>
					<p>Production Assistant</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Alyx Gonzales, PA|PA stands for production assistant" src="<%= Url.Content("~/Content/crew/alyx_pa.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Cary Farrow IV</h4>
					<p>PA, Key Grip</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Cary Farrow IV, PA|That's right MFers, I've got a IV after my name." src="<%= Url.Content("~/Content/crew/cary_pa.jpg") %>" /></div>
		</div>
              
                    
            </li>
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Richard</h4>
					<p>Jib Operator</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Richard, jib operator|jib: moves the camera up and down|6|5|4|3|2|1" src="<%= Url.Content("~/Content/crew/richard_jibexpert.jpg") %>" /></div>
		</div>
              
                    
               
            </li>
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Jenna Howard</h4>
					<p>Slate, Production Assistant</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Jenna Howard, Slate|Jenna Howard, Nerf weapons expert" src="<%= Url.Content("~/Content/crew/Slate.jpg") %>" /></div>
		</div>
              
                    
               
            </li>
            <li>
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Gonzalo Pozo</h4>
					<p>BTS Photographer</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Gonzalo Pozo, BTS|Gonzalo Pozo, the reason all these pics kick ass" src="<%= Url.Content("~/Content/crew/gonzalo_bts.jpg") %>" /></div>
		</div>
              
                    
                          </li>
            <li>
            
            <div class="mosaic-block bar">
			<a class="mosaic-overlay">
				<div class="details">
					<h4>Ernesto Gonzales</h4>
					<p>Carpenter</p>
				</div>
			</a>
			<div class="mosaic-backdrop"><img class="squarepic" alt="Ernesto Gonzales, Carpenter|also Taquito, the Watching You dog" src="<%= Url.Content("~/Content/crew/ernesto_carpenter.jpg") %>" /></div>
		</div>
              
                    
                          </li>
        </ul>
    </div>
</asp:Content>
