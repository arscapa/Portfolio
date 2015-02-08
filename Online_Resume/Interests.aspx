<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Interests.aspx.vb" Inherits="Online_Resume.Interests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="jumbotron">
     
        <h1>My Interests</h1>
      
      </div>
  
     <div class="learn-more">
         <div class="container">
  <br />
    <h3> Too Many to List But Here's a Start</h3>
    <br />

 <div class ="row">
     <div class="col-md-6">
         <img src="Pictures/2012_Champs.JPG" alt="2012 Champs- Pepsi Ice Center" class="img-thumbnail"/>
     <h3>Hockey</h3>
         <p>I am an avid hockey fan and enjoy watching NHL and AHL games. I currently play on a number of Men's League Hockey Teams and I also referree games as well as coach </p>
             </div>
     <div class="col-md-6">
         <img src="Pictures/JolietMX.jpg" alt="Motocross Picture" class="img-thumbnail" />
         <br />
         <br />
         <h3>Motocross</h3>
<p>I have been riding motorcycles since the age of 14 and you can often find me riding at <a href="http://jolietmx.com" target="_blank">Joliet MX</a> in the summer. My father and I also take an annual trip to <a href="http://haspinacres.com" target="_blank">Haspin Acres</a> in Laurel, IN, which I highly recommend to anyone who's never been. Over 750 acres of wooded hills and trails!  </p>
     </div>
     </div>

     <h3>Investing</h3>
     <p>Investing is another interest of mine and I am constantly researching new stocks and studying chart patters and technicals. My mindset is typically that of a long-term investor with a core-portfolio built around mutual funds and ETF's value-averaged on a quarterly basis with smaller positions invested in high-growth stocks.</p>
     <p>Here are some stocks I am currently following:</p>
</div>

     <div class="row">
         <div class="container">

   
   <div id="stocktwits-widget-news"></div>
<div class="col-md-4">
<script type="text/javascript" src="http://stocktwits.com/addon/widget/2/widget-loader.min.js"></script>
<script type="text/javascript">
STWT.Widget({container: 'stocktwits-widget-news', symbol: 'GPRO', width: '300', height: '300', limit: '10', scrollbars: 'true', streaming: 'true', title: 'GPRO', style: {link_color: '4871a8', link_hover_color: '4871a8', header_text_color: '000000', border_color: 'cecece', divider_color: 'cecece', divider_color: 'cecece', divider_type: 'solid', box_color: 'f5f5f5', stream_color: 'ffffff', text_color: '000000', time_color: '999999'}});
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


             
       
             
</asp:Content>
