<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Porfolio.aspx.vb" Inherits="Online_Resume.Porfolio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="learn-more">
        <div class="container">


 <div class ="row">
     <div class="col-md-4">


                              <div id="LogoDesignCarousel" class="carousel slide" data-ride="carousel" data-interval="false" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#LogoDesignCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#LogoDesignCarousel" data-slide-to="1"></li>
    <li data-target="#LogoDesignCarousel" data-slide-to="2"></li>
      <li data-target="#LogoDesignCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="Pictures/LogoDesign/Website%20Logo.jpg" /> 
      <div class="carousel-caption">
        <h3></h3>
      </div>
    </div>

    <div class="item">
        <img src="Pictures/LogoDesign/WebsiteLogo2.jpg" />
      <div class="carousel-caption">
        <h3></h3>
      </div>
    </div>

       <div class="item">
           <img src="Pictures/LogoDesign/1.jpg" />
      <div class="carousel-caption">
       <h3> </h3>
      </div>
    </div>


         <div class="item">
             <img src="Pictures/LogoDesign/LOGO.png" />
      <div class="carousel-caption">
       <h3> </h3>
      </div>
    </div>

    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#LogoDesignCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#LogoDesignCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
         </div>

       <div class="col-md-4">
           </div>



             <div class="col-md-4">
                 </div>


     </div>






        </div>



    </div>
</asp:Content>
