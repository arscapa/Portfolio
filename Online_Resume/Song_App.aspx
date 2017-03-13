<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Song_App.aspx.vb" Inherits="Online_Resume.Portfolio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="jumbotron">
     
        <h1>My Portfolio</h1>
        <p class="quote">"There is no talent here, this is hard work. This is an obsession"</p>
      </div>
    
     <div class="page-width">
        <div class ="page-background">
      <div class="content-container">


    <div class="content">
  
        <div class="container">
    
    <h3>Test your musical knowledge and see if you can guess the tracks of your favorite artists based on a small clip!</h3>

    <h1>Search for an Artist</h1>
    <p>Type an artist name and click on "Search". Then click "Play" to play 30 seconds of its first track.</p>
    
      
        <input type="text" id="query" value="" class="form-control" placeholder="Type an Artist Name"/>
      <br />
        <input type="submit" id="search" class="btn btn-primary" value="Search" />
      <br />
      <br />
      <input type="button" id="play" class="btn btn-primary" value="Play" disabled/>
      <br />
      <br />



    <div id="results">
        
    </div>





            </div>

</div>
 </div>
    </div>  
         </div> 
</asp:Content>
