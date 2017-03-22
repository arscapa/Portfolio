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
    
    <div id ="songApp_Header">
    <h3>Test your musical knowledge and see if you can guess the tracks of your favorite artists based on a small clip!</h3>
    </div>

          
    <h1>Search for an Artist</h1>      
        <input type="text" id="query" value="" class="form-control" placeholder="Type an Artist Name"/>
      <br />
        <input type="submit" id="search" class="btn btn-primary" value="Search" />
      <br />
   
    
    <div id="results" class ="well well-lg">

    </div>
   


            </div>

</div>
 </div>
    </div>  
         </div> 
</asp:Content>
