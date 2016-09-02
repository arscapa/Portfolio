<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Interests.aspx.vb" Inherits="Online_Resume.Interests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="jumbotron">
     
        <h1>My Interests</h1>
      <p class="quote">"There is no end. There is no beginning. There is only the passion of life"</p>
      </div>
  


    <div class="info" id="chargerinfo">
         <div class="container">

        <%--//start of collapsible section 1--%>
 <div class="accordion">
    <div class="accordion-section">
        <a class="accordion-section-title active" id="Resto_accordion" href="#AutomotiveRestoration"></a>
        <div id="AutomotiveRestoration" class="accordion-section-content open"  style="display:block">
            <%--//start of collapsible content 2--%>
            
  

<div id="trigger1"></div>  
                       

<div class="AutoResto">
    
                  <br />
                  <br />

    <%--Image Maps for Charger Pic, (+50,-10) to account for padding --%>
    <map name="map">
          <area shape ="circle" coords="557, 485, 89" href="#AutoResto" id="Suspension" alt="Suspension" class="SelectSuspension"/>

         <area shape ="circle" coords="263, 275, 95" href="#AutoResto" id="Engine" alt="Engine" class="SelectEngine"  />

        <area shape ="poly" coords="526, 207, 375, 337, 323, 351, 269, 387, 267, 420, 292, 424, 269, 457, 353, 488, 368, 491, 385, 584, 419, 584, 492, 508, 538, 371, 581, 332, 584, 385, 633, 330, 621, 224, 596, 203, 603, 192, 549, 191" href="#AutoResto" id="Body" alt="Body" class="SelectBody"  />

         <area shape ="poly" coords="623, 174, 651, 147, 669, 112, 655, 89, 638, 68, 598, 78, 560, 82, 432, 76, 530, 192, 585, 187" href="#AutoResto" id="Interior" alt="Interior" class="SelectInterior"  />
    </map>

    <img src="Pictures/AutomotiveResto/MainPics/74dodge.PNG" alt="'74 Dodge Charger" usemap="#map" id="Charger_Main" />
    
   
    <%--Image Links for Suspension Lightbox Group--%>

     <a href="Pictures/AutomotiveResto/Suspension/1.JPG" rel="lightbox[Suspension]" data-title=" "><span id="span1"></span></a>
    <a href="Pictures/AutomotiveResto/Suspension/2.JPG" rel="lightbox[Suspension]" data-title=" "></a>
      <a href="Pictures/AutomotiveResto/Suspension/3.JPG" rel="lightbox[Suspension]" data-title=" "></a>
      <a href="Pictures/AutomotiveResto/Suspension/4.JPG" rel="lightbox[Suspension]" data-title="Control Arm"></a>
      <a href="Pictures/AutomotiveResto/Suspension/5.JPG" rel="lightbox[Suspension]" data-title=" "></a>
      <a href="Pictures/AutomotiveResto/Suspension/6.JPG" rel="lightbox[Suspension]" data-title="New Ball Joint, Bushing Bar and Joint "></a>
      <a href="Pictures/AutomotiveResto/Suspension/7.JPG" rel="lightbox[Suspension]" data-title=" "></a>
      <a href="Pictures/AutomotiveResto/Suspension/8.JPG" rel="lightbox[Suspension]" data-title="New Ball Joints, Tie Rod Ends, & Hardware "></a>
      <a href="Pictures/AutomotiveResto/Suspension/9.JPG" rel="lightbox[Suspension]" data-title="New Shocks, Tie Rods, & Dust Covers Repainted "></a>

   <%--Image Links for Engine Group--%>
    <a href="Pictures/AutomotiveResto/Engine/1.JPG" rel="lightbox[Engine]" data-title="5.2L, 318 V8"><span id="span2"></span></a>
    <a href="Pictures/AutomotiveResto/Engine/2.JPG" rel="lightbox[Engine]" data-title="New Plug Wires, Blaster Coil, & Battery Cables"></a>
    <a href="Pictures/AutomotiveResto/Engine/3.JPG" rel="lightbox[Engine]" data-title="Hack Wiring Job"></a>
    <a href="Pictures/AutomotiveResto/Engine/4.JPG" rel="lightbox[Engine]" data-title="New Wiring & Voltage Regulator"></a>
    <a href="Pictures/AutomotiveResto/Engine/5.JPG" rel="lightbox[Engine]" data-title="New Starter"></a>
    <a href="Pictures/AutomotiveResto/Engine/6.JPG" rel="lightbox[Engine]" data-title="New Brake Master Cylinder & Battery Cables"></a>
    <a href="Pictures/AutomotiveResto/Engine/7.JPG" rel="lightbox[Engine]" data-title="New Motor Mounts"></a>
     <a href="Pictures/AutomotiveResto/Engine/8.JPG" rel="lightbox[Engine]" data-title="New Alternator"></a>
    <a href="Pictures/AutomotiveResto/Engine/header1.JPG" rel="lightbox[Engine]" data-title="Hooker Competition Headers"></a>
     <a href="Pictures/AutomotiveResto/Engine/9.JPG" rel="lightbox[Engine]" data-title="Purple Hornies Glasspack <q>Mufflers</q>"></a>

     <%--Image Links for Bodywork Group--%>
    <a href="Pictures/AutomotiveResto/Bodywork/1.JPG" rel="lightbox[Body]" data-title="Rusted out section"><span id="span3"></span></a>
    <a href="Pictures/AutomotiveResto/Bodywork/2.JPG" rel="lightbox[Body]" data-title="Before"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/3.JPG" rel="lightbox[Body]" data-title="New Metal Cut and Welded in"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/4.JPG" rel="lightbox[Body]" data-title="Smoothed out with body filler"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/5.JPG" rel="lightbox[Body]" data-title="More Rust"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/6.JPG" rel="lightbox[Body]" data-title="Not the best welding work but it'll do "></a>
    <a href="Pictures/AutomotiveResto/Bodywork/7.JPG" rel="lightbox[Body]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Bodywork/8.JPG" rel="lightbox[Body]" data-title="Lower fender section was getting pretty bad"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/9.JPG" rel="lightbox[Body]" data-title="Rust was present above main body line so I decided to cut and replace the entire section"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/10.JPG" rel="lightbox[Body]" data-title="Again, pretty crummy welds but only had a harbor freight 90amp welder to work with"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/11.JPG" rel="lightbox[Body]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Bodywork/12.JPG" rel="lightbox[Body]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Bodywork/13.JPG" rel="lightbox[Body]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Bodywork/14.JPG" rel="lightbox[Body]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Bodywork/fenderwell.JPG" rel="lightbox[Body]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Bodywork/primer.JPG" rel="lightbox[Body]" data-title="Did some work to the drivers side fender as well and sprayed a coat of primer"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/paint_color.JPG" rel="lightbox[Body]" data-title="Ordered some new candy apple red paint & decided to paint a fender to get an idea how it might look on car"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/redfender.JPG" rel="lightbox[Body]" data-title="After a few coats of clear and some buffing, not too bad"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/paintedfender.JPG" rel="lightbox[Body]" data-title="Might have to consider this color, it really pops in the sun"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/comparison.JPG" rel="lightbox[Body]" data-title="Decided to freshen up the paint and buff it out. Here's a comparison, left side has been buffed, right side not so much"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/hood.JPG" rel="lightbox[Body]" data-title="Hood finished"></a>
    <a href="Pictures/AutomotiveResto/Bodywork/buff2.JPG" rel="lightbox[Body]" data-title="After buffing the entire car"></a>


    <%--Image Links for Interior Group--%>
    <a href="Pictures/AutomotiveResto/Interior/1.JPG" rel="lightbox[Interior]" data-title="Mostly original interior when I purchased the car"><span id="span4"></span></a>
    <a href="Pictures/AutomotiveResto/Interior/2.JPG" rel="lightbox[Interior]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Interior/3.JPG" rel="lightbox[Interior]" data-title="Fabricated a mounting rail for a new radio"></a>
    <a href="Pictures/AutomotiveResto/Interior/4.JPG" rel="lightbox[Interior]" data-title="New Kenwood radio installed"></a>
    <a href="Pictures/AutomotiveResto/Interior/5.JPG" rel="lightbox[Interior]" data-title=""></a>
    <a href="Pictures/AutomotiveResto/Interior/6.JPG" rel="lightbox[Interior]" data-title="Fabricated switch panel to put in place of old radio at least for now, repainted trim"></a>
    <a href="Pictures/AutomotiveResto/Interior/7.JPG" rel="lightbox[Interior]" data-title="B&M Z-Gate Lockout Shifter with Fabricated Mount"></a>
    <a href="Pictures/AutomotiveResto/Interior/8.JPG" rel="lightbox[Interior]" data-title="Z-Gate Shifter with Trim"></a>
    <a href="Pictures/AutomotiveResto/Interior/9.JPG" rel="lightbox[Interior]" data-title="New Grant Steering Wheel, Autometer Tachometer & Voltmeter"></a>

</div>
            


 <br />   
             <p>I've been working on restoring a 1974 Dodge Charger since High School. The project has stalled lately due to other comittments but I hope to finish it one day. <b><span class="bold">Click on a section of the car in the picture above</span></b> to see some restoration pictures.</p>

    <br />
    <br />


            </div>
        </div>
     </div>

<%--    //start of collapsible section 2--%>
  <div class="accordion">
    <div class="accordion-section">
        <a class="accordion-section-title" id="TickerBar" href="#Investing">Investing <span class="stockQuote"> <span class="price"> 36.50</span> <span class="arrow"> &#x25B2; </span><span class ="dollarChange"> 1.50 </span> <span class ="percentChange"> (8.33%)</span></span> </a>
       
        <div id="Investing" class="accordion-section-content">

<%--//start of collapsible content 2--%>

    
     <p>I'm constantly researching new stocks and studying chart patters and technicals. My mindset is typically that of a long-term investor with a core-portfolio built around mutual funds and ETF's value-averaged on a quarterly basis with smaller positions invested in high-growth stocks.</p>
     <p>Here are some stocks I am currently following:</p>
             <br />

         <div class="row">

         <div class="container">

   <div class="stocktwits">
   <div id="stocktwits-widget-news"></div>
<div class="col-md-4">
<script type="text/javascript" src="http://stocktwits.com/addon/widget/2/widget-loader.min.js"></script>
<script type="text/javascript">
    STWT.Widget({ container: 'stocktwits-widget-news', symbol: 'GPRO', width: '300', height: '300', limit: '10', scrollbars: 'true', streaming: 'true', title: 'GPRO', style: { link_color: '4871a8', link_hover_color: '4871a8', header_text_color: '000000', border_color: 'cecece', divider_color: 'cecece', divider_color: 'cecece', divider_type: 'solid', box_color: 'f5f5f5', stream_color: 'ffffff', text_color: '000000', time_color: '999999' } });
</script>
       </div>
         
       
                 <div id="stocktwits-widget-news"></div>
  <div class="col-md-4">
<script type="text/javascript" src="http://stocktwits.com/addon/widget/2/widget-loader.min.js"></script>
<script type="text/javascript">
    STWT.Widget({ container: 'stocktwits-widget-news', symbol: 'SSYS', width: '300', height: '300', limit: '10', scrollbars: 'true', streaming: 'true', title: 'SSYS', style: { link_color: '4871a8', link_hover_color: '4871a8', header_text_color: '000000', border_color: 'cecece', divider_color: 'cecece', divider_color: 'cecece', divider_type: 'solid', box_color: 'f5f5f5', stream_color: 'ffffff', text_color: '000000', time_color: '999999' } });
</script>

         </div>

         
                 <div id="stocktwits-widget-news"></div>
<div class="col-md-4">
<script type="text/javascript" src="http://stocktwits.com/addon/widget/2/widget-loader.min.js"></script>
<script type="text/javascript">
    STWT.Widget({ container: 'stocktwits-widget-news', symbol: 'BABA', width: '300', height: '300', limit: '10', scrollbars: 'true', streaming: 'true', title: 'BABA', style: { link_color: '4871a8', link_hover_color: '4871a8', header_text_color: '000000', border_color: 'cecece', divider_color: 'cecece', divider_color: 'cecece', divider_type: 'solid', box_color: 'f5f5f5', stream_color: 'ffffff', text_color: '000000', time_color: '999999' } });
</script>

         </div>


         </div>
             </div>
             </div>

    <br />
             <br />
             <br />
          

</div>
         </div>
            </div>


  <%-- //start of collapsible content 3--%>

   <div class="accordion">
    <div class="accordion-section">
        <a class="accordion-section-title" id="paint_accordion" href="#Painting">Paint & Body Work  <img src="Pictures/Accordion/paint_body(2).png" class="wipe-left" id="sprayPaint" style="top: 0; 
    left: 0; width:0px; height:0px"/><img src="Pictures/Accordion/spray_pattern.png" id="spray_pattern" style="top: 0; 
    left: 0; width:0px; height:0px" /><img src="Pictures/Accordion/paint_gun.png" id="paintGun" /></a>
         
        <div id="Painting" class="accordion-section-content">


<%--//start of content--%>

              <div class="PaintandBody">
                  <div id="trigger2"></div>
      <!-- Image Carousel -->
      <div id="PaintBodyCarousel" class="carousel slide" data-ride="carousel" data-interval="false" style="width:650px" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#PaintBodyCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="1"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="2"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="3"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="4"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="5"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="6"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="7"></li>
    <li data-target="#PaintBodyCarousel" data-slide-to="8"></li>
  
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
       <a href="Pictures/PaintBody/BeforeHondaXL175.JPG" target="_blank"><img src="Pictures/PaintBody/BeforeHondaXL175min.png" /></a>
      <div class="carousel-caption">
        <h3>'73 Honda XL175 Project Bike Before Paint</h3>
   </div>
        </div>
          
    <div class="item">
        <a href="Pictures/PaintBody/XL175_After.JPG" target="_blank"><img src="Pictures/PaintBody/XL175_Aftermin.png" /></a>
      <div class="carousel-caption">
        <h3>After Paint</h3>
  </div>
        </div>

       <div class="item">
          <a href="Pictures/PaintBody/CandyRedXL175.JPG" target="_blank"> <img src="Pictures/PaintBody/CandyRedXL175min.png" /></a>
      <div class="carousel-caption">
       <h3>Candy Apple Red w/t Pearl Ghost Flames </h3>
   </div>
           </div>
  
       <div class="item">
         <a href="Pictures/PaintBody/GhostFlame.JPG" target="_blank"> <img src="Pictures/PaintBody/GhostFlamemin.png" /></a>
      <div class="carousel-caption">
       <h3>Ghost Flames </h3>
   </div>
           </div>

   <div class="item">
      <a href="Pictures/PaintBody/pinstripingdesign.JPG" target="_blank"> <img src="Pictures/PaintBody/pinstripemin.png" /></a>
      <div class="carousel-caption">
       <h3>Pinstripe Design </h3>
      </div>
    </div>

          <div class="item">
        <a href="Pictures/PaintBody/tape.JPG" target="_blank"><img src="Pictures/PaintBody/tapemin.png" /></a>
      <div class="carousel-caption">
       <h3>Hood taped off for paint</h3>
      </div>
    </div>


       <div class="item">
       <a href="Pictures/PaintBody/hood.JPG" target="_blank"><img src="Pictures/PaintBody/hoodmin.png" /></a>
      <div class="carousel-caption">
       <h3> </h3>
      </div>
    </div>


       
       <div class="item">
     <a href="Pictures/PaintBody/outline2.JPG" target="_blank"> <img src="Pictures/PaintBody/outline2min.png" /></a>
      <div class="carousel-caption">
       <h3> </h3>
      </div>
    </div>


        <div class="item">
      <a href="Pictures/PaintBody/painting.JPG" target="_blank"><img src="Pictures/PaintBody/paintingmin.PNG" /></a>
      <div class="carousel-caption">
       <h3> </h3>
      </div>
    </div>
    



  </div>
  
  <!-- Controls -->
  <a class="left carousel-control" href="#PaintBodyCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#PaintBodyCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>




          <br />
    <p>Working on cars spawned another interest in custom paint and body work and I soon began a number of other projects. Flip through the gallery above to see some of my work.</p>




             <br />
             <br />

    </div>


               
        

</div>
        
    </div>
        
  
      
        
    
      <%-- //start of collapsible content 4--%>

   <div class="accordion">
    <div class="accordion-section">
        <a class="accordion-section-title" id="flag1" href="#Paint"></a>
         
        <div id="Paint" class="accordion-section-content">


<%--//start of content--%>

   


<br />
<br />

<h2>Hobbies</h2>
                   <br />


 <div class ="row">
     <div class="col-md-4">
         <img src="Pictures/2012-Champs.png" alt="2012 Champs- Pepsi Ice Center" class="img-thumbnail"/>
     <h3>Hockey</h3>
         <p>Avid hockey fan who enjoys watching NHL and AHL games. I currently play on a number of Men's League Hockey Teams and I also referree games as well as coach </p>
             </div>
     <div class="col-md-4">
         <img src="Pictures/JolietMX.png" alt="Motocross Picture" class="img-thumbnail" />
         <br />
         <br />
         <h3>Motocross</h3>
<p>I've been riding motorcycles since the age of 14 and you can often find me riding at <a href="http://jolietmx.com" target="_blank">Joliet MX</a> in the summer. I also take an annual trip to <a href="http://haspinacres.com" target="_blank">Haspin Acres</a> in Laurel, IN, which I highly recommend to anyone who's never been. Over 750 acres of wooded hills and trails!  </p>
     </div>


     <div class="col-md-4">
 <img src="Pictures/band.png" class="img-thumbnail"/>
<h3>Music</h3>
             <p>I got my first guitar when I was in gradeschool and I have been playing ever since. I am currently playing lead guitar for a band called <a href="https://www.facebook.com/lostandfoundryrocks">"Lost and Foundry",</a> follow us on Facebook and check out one of our shows.</p>
     <div class="fb-like" data-href="https://www.facebook.com/lostandfoundryrocks" data-width="200" data-layout="standard" data-action="like" data-show-faces="true" data-share="false"></div>
             </div>
     </div>

             <br />
             <br />
           












         </div>
     </div>


            </div>
        </div>
        </div>
       </div>
    </div>
      


         


             
       
             
</asp:Content>
