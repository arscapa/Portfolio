<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Portfolio.aspx.vb" Inherits="Online_Resume.Portfolio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="jumbotron">
     
        <h1>My Portfolio</h1>
        <p class="quote">"Your work is to discover your work and then, with all your heart, to give yourself to it"</p>
      </div>

     <div class="learn-more">
               <div class="container">

<h1>Past Projects</h1>
<br />
<br />

             


 <div class ="row">
     <div class="col-md-4">
         <a href="Videos/ExcelDEMO.mp4"  class="fancybox"  >
             <div class="excel_vid">
             <img src="Pictures/excel.png" alt="Excel Outstanding Checks Reconciliation App" class="vidIMG"/>
            </div>
         </a>
     <h3>Excel Spreadsheet Application</h3>
         <p>Using a combination of VLookup, Conditional Formatting, Macro's, & VBA coding, I was able to take an outstanding check reconciliation that was previously performed manually and decrease the lead time from several hours to mere minutes. Click the pic above for a quick demo of the application in action </p>
             </div>

     <div class="col-md-4">
         <img src="Pictures/ERD.png" alt="Ticketing System ERD's"  />
         
         <h3>Zendesk</h3>
<p>For my capstone BIS class, I worked with ISU's College of Business to develop a solution for their support staff to more efficiently handle the technical needs and issues of the college. We ultimately
    recommended a software-as-a-service solution called Zendesk because of it's proven track record and scalability. For more information on this project, including a feasibility analysis, prototype ERD's, success metrics, & a requirements document, click <a href="ProjectFiles.zip">here</a> to download some of our project files. 
</p>
     </div>


     <div class="col-md-4">
 <img src="Pictures/github.png" />
<h3>GitHub</h3>
             <p>I have started a GitHub repository to store any programming projects and familiarize myself with Git. The entire code for this website can be found at the following link as well; <a href=" https://github.com/arscapa" target="_blank">https://github.com/arscapa</a></p>
             </div>
     </div>
</div>
         </div>

   

    
      <div class="neighborhood-guides">
        <div class="container">
<h2>Websites I've Designed</h2>
            <br />
 <div class ="row">
    <div class="col-md-4">
         <a href="Videos/VehicleDealerWebsite.mp4"  class="fancybox"  >
             <img src="Pictures/excel.png" alt="Vehicle Dealership Website" class="vidIMG"/>
         </a>
        <h3>Vehicle Dealership Website Template</h3>
        <p>ASP.NET based site with vehicle detail page where visitors can view vehicles available for sale & research prices, financing page where users can choose financing options and calculate loan payments, and a payment page.  </p>
        <p>Primary features:</p>
        <ul>
            <li>Session Variables</li>
            <li>Creation and Retrieval of Querystring Values</li>
            <li>Access Database</li>
            <li>Input Validation</li>
            <li>Loan Payment Calculator</li>
        </ul>
    </div>

    <div class="col-md-4">
         <a href="Videos/Lodging_Website.mp4"  class="fancybox"  >
             <img src="Pictures/excel.png" alt="Lodging Website" class="vidIMG"/>
         </a>
        <h3>Lodging Website</h3>
        <p>Lodging company website wehre users can create an account, login, view hotels and rates, and make a reservation.</p>
        <p>Primary features:</p>
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
         <a href="Videos/MXTracker.mp4"  class="fancybox"  >
             <img src="Pictures/excel.png" alt="MXTimeTracker.com" class="vidIMG"/>
         </a>
       </div>  
          </div>

          <br />
            <br />
    
        </div>

    </div>





     <div class="learn-more">
               <div class="container">

                       <h2>Logo's</h2>

         <a href="Pictures/LogoDesign/WebsiteLogo2.jpg" data-lightbox="Logos"> <img src="Pictures/LogoDesign/WebsiteLogo2.jpg" alt="Scapardine Automotive" class="img-rounded" /></a>

     <a href="Pictures/LogoDesign/Website%20Logo.jpg" data-lightbox="Logos" data-title=" "></a>
    <a href="Pictures/LogoDesign/1.jpg" data-lightbox="Logos" data-title=" "></a>
       <a href="Pictures/LogoDesign/LOGO.png" data-lightbox="Logos" data-title=" "></a>
     <br />
        <br />
        <h4>Click above to take a closer look at the logo's I've designed</h4>



         </div>
         </div>


</asp:Content>
