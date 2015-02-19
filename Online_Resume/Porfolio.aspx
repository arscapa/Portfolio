<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Porfolio.aspx.vb" Inherits="Online_Resume.Porfolio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="neighborhood-guides">
        <div class="container">





                              <div id="AutoRestoCarousel" class="carousel slide" data-ride="carousel" data-interval="false" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#AutoRestoCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#AutoRestoCarousel" data-slide-to="1"></li>
    <li data-target="#AutoRestoCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="Pictures/AutomotiveResto/1.JPG" />
      <div class="carousel-caption">
        <h3></h3>
      </div>
    </div>

    <div class="item">
        <img src="Pictures/AutomotiveResto/2.JPG" />
      <div class="carousel-caption">
        <h3></h3>
      </div>
    </div>

       <div class="item">
           <img src="Pictures/AutomotiveResto/3.JPG" />
      <div class="carousel-caption">
       <h3> </h3>
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#AutoRestoCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#AutoRestoCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>











        </div>



    </div>
</asp:Content>
