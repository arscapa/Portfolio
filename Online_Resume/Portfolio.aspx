<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Portfolio.aspx.vb" Inherits="Online_Resume.Portfolio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="jumbotron">
     
        <h1>My Portfolio</h1>
        <p class="quote">"Your work is to discover your work and then, with all your heart, to give yourself to it"</p>
      </div>

<%--    //start of collapsible section 1--%>
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Past Projects
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">

<%--//start of collapsible content 1--%>
     <div class="learn-more">
               <div class="container">

<h2>Past Projects</h2>
<br />
<br />
              
                   

<div class="media">
    <div class="pull-left">
        <a href="Videos/ExcelDEMO.mp4" class="fancybox">
            <div class="excel_vid">
                <img class="vidIMG" src="Pictures/excel.png" alt="Excel Outstanding Checks Reconciliation App"  />
                </div>
        </a>
    </div>
     <div class="media-body">
    <h3 class="media-heading">Excel Spreadsheet Application</h3>
          <p>Using a combination of VLookup, Conditional Formatting, Macro's, & VBA coding, I was able to take an outstanding check reconciliation that was previously performed manually and decrease the lead time from several hours to mere minutes. Click the pic above for a quick demo of the application in action </p>          
</div>
    </div>
         
   

<br />
<br />



    <div class="media">
    <div class="pull-left">
        <a href="ProjectFiles.zip">
                  <img src="Pictures/ERD.png" alt="Ticketing System ERD's" class="vidIMG" />
        </a>
    </div>
     <div class="media-body">
   <h3>Zendesk</h3>
<p>For my capstone BIS class, I worked with ISU's College of Business to develop a solution for their support staff to more efficiently handle the technical needs and issues of the college. We ultimately
    recommended a software-as-a-service solution called Zendesk because of it's proven track record and scalability. For more information on this project, including a feasibility analysis, prototype ERD's, success metrics, & a requirements document, click <a href="ProjectFiles.zip">here</a> to download some of our project files. 
</p>
</div>
    </div>
         
   

<br />
<br />
         
     
    
   <div class="media">
    <div class="pull-left">
        <a href="https://github.com/arscapa">
                 <img src="Pictures/github.png" class="vidIMG" />
        </a>
    </div>
     <div class="media-body">
   <h3>Github</h3>
 <p>I started a GitHub repository to store any programming projects and familiarize myself with Git. The entire code for this website can be found at the following link as well; <a href=" https://github.com/arscapa" target="_blank">https://github.com/arscapa</a></p>
        
</div>
    </div>
         
   

<br />
<br />

  
         </div>
         </div>




    </div>
    </div>
  </div>

<%--//start of collapsible section 2--%>
   <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Websites I've Designed
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">


<%--//start of collapsible content 2--%>
     <a name="Websites"></a>
      <div class="info">
        <div class="container">
<h2>Websites I've Designed</h2>
            <br />
            <br />
 <div class ="row">
    <div class="col-md-4">
        <div class="playbtn">
         <a href="Videos/VehicleDealerWebsite.mp4"  class="fancybox"  >
             <img src="Pictures/scap_auto.png" alt="Vehicle Dealership Website" class="vidIMG"/>
         </a>
            </div>
        <h3>Vehicle Dealership Website Template</h3>
        <p>ASP.NET based site with vehicle detail page where visitors can view vehicles available for sale & research prices, financing page where users can choose financing options and calculate loan payments, and a payment page.  </p>
        <p><b>Features:</b></p>
        <ul>
            <li>Session Variables</li>
            <li>Creation and Retrieval of Querystring Values</li>
            <li>Access Database</li>
            <li>Input Validation</li>
            <li>Loan Payment Calculator</li>
        </ul>
    </div>

    <div class="col-md-4">
        <div class="playbtn">
         <a href="Videos/Lodging_Website.mp4"  class="fancybox"  >
             <img src="Pictures/lofty_lodging.png" alt="Lodging Website" class="vidIMG"/>
         </a>
            </div>
        <h3>Lodging Website Template</h3>
        <p>Lodging company website where users can create an account, login, view hotels and rates, and make a reservation.</p>
        <p><b>Features:</b></p>
        <ul>
            <li>User Authentication</li>
            <li>Login Status</li>
            <li>User Registration</li>
            <li>Menu's & Security Trimming based on user status</li>
            <li>Sitemap</li>
            <li>Bread crumbs (SiteMapPath)</li>
            <li>Data retrieval from a SQL Server Database</li>
        </ul>
       </div>  


      <div class="col-md-4">
          <div class="playbtn">
         <a href="Videos/MXTracker.mp4"  class="fancybox"  >
             <img src="Pictures/mxtracker.png" alt="MXTimeTracker.com" class="vidIMG"/>
         </a>
              </div>
          <h3>MX Time Tracker</h3>
          <p>Being a big fan of motocross, I built this website to be an online leaderboard where motocross riders can go to post lap times from different tracks around the country
              and include information like what model motorcyle they were riding and what the track conditions were like at the time so they can compare their times to other riders.
          </p>
          <p><b>Features:</b></p>
          <ul>
              <li>Dynamic Data with ability to add and view records based on user role</li>
              <li>Drop-down menu with security trimming based on role</li>
              <li>SQL Backed</li>
              <li>User Authentication</li>
              <li>JQuery Date Picker</li>
          </ul>
       </div>  
          </div>

          <br />
            <br />
    
        </div>
          <br />
          <br />
    </div>




              </div>
    </div>
  </div>

       <%-- //start of collapsible content 3--%>

          <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
         Logo's I've Designed
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">


<%--//start of content--%>
          

      <a name="Logos"></a>

     <div class="learn-more">
               <div class="container">

                       <h2>Logo's</h2>
                   <br />
                   <br />

         <a href="Pictures/LogoDesign/WebsiteLogo2.jpg" data-lightbox="Logos"> <img src="Pictures/LogoDesign/WebsiteLogo2.jpg" alt="Scapardine Automotive" class="img-rounded" /></a>

     <a href="Pictures/LogoDesign/Website%20Logo.jpg" data-lightbox="Logos" data-title=" "></a>
    <a href="Pictures/LogoDesign/1.jpg" data-lightbox="Logos" data-title=" "></a>
       <a href="Pictures/LogoDesign/LOGO.png" data-lightbox="Logos" data-title=" "></a>
     <br />
        <br />
        <h3>Click image above to take a closer look at the logo's I've designed</h3>

         </div>

         </div>
    

             </div>
    </div>
  </div>
</div>
</asp:Content>
