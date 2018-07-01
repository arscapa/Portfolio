<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.vb" Inherits="Online_Resume.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="jumbotron">
            <div id="header_container">
        <h1 id="jumbotron_header">Welcome to my Site</h1>
            </div>
        <p class="quote">"Anything in life worth doing is worth overdoing"</p>
      </div>
     
    
    <div class="page-width">

<%--    //** NAVIGATION MENU ***--%>
        <div class ="nav_menu">
            <ul>
                <li class="active"><span class="nav_span"><a href="#" class="active">About Me</a></span></li>
                <li><span class="nav_span"> <a href="Projects.html"> Projects</a></span></li>
                <li><span class ="nav_span"><a href="Websites.html">Websites</a></span></li>
                <li><span class ="nav_span"><a href="Code_Samples.html">Code Samples</a></span></li>
            </ul>
          
        </div>
<%--    //** END NAVIGATION MENU ***--%>


        <div class ="page-background">
      <div class="content-container">
          <div id="content">
       
 <%--    //**Start of Content***--%>


           
     <%-- DIV Naming Convention = text of the navigation menu button but with spaces replaced by underscore--%>
              <div id="About_Me" class="active">
            <hr />
            <h2>Anthony Scapardine, CPA</h2>
            <p class="quote"><b>Chicago based CPA, developer, programmer and jack-of-all trades</b></p>
                
                  <p> Began my career as a Staff Accountant with Exelon where my knowledge of programming & systems has allowed me to utilize technology in order to drastically
                      increase my productivity. I've since moved on to a Financial Systems Analyst position where I look to further my knowledge in the field. I'm currently working towards a Masters in Computer Science and outside of this I'm a big DIY'er and have a passion for the automotive industry. Take a look around at some of the projects I've worked on over the years!
                </p>
                  <hr />
            
            <h2>Experience</h2>
            <img src="Pictures/Exelon_logo.png" id="Exelon_logo"/>
            
                  <h4> Financial Systems Analyst </h4> 
                  <ul> 
                    <li>Document and perform custom configuration & implementation of system fixes, updates and enhancements</li>
                    <li>Provide Treasury/Accounting application support & training</li>
                    <li>Facilitate business process improvement through the use of technology</li>
                    <li>Assisted in a successfull post-merger integration cutover plan and provided post-implementation support</li>
                    <li>Construct SQL Queries to perform research and pull data from database</li>
                      </ul>
                    <h4> Staff Accountant </h4> 
                  <ul> 
                    <li>Implemented a number of process improvements related to the month-end close process which have reduced inherent risk and created efficiencies</li>
                    <li>Participated in User Acceptance Testing (UAT) for systems integration and system conversion efforts in support of a $6.8 billion dollar merger</li>
                    <li>Standardized and improved spreadsheets used in monthly entries cutting preparation time in half and reducing spreadsheet related errors to close to zero. </li>
                </ul>
            
                <img id="headshot" src="Pictures/AboutPage/headshot.jpg" />
            
            <div id="trigger3"></div>
          
      <h2>Competencies</h2>
            
            
                 <ul class="skills">
                    <li class="skill_barPRO" style="background-color:#FF5353">MICROSOFT EXCEL
                        <span class="skill_level">PRO </span>
                    </li>
                    <li class="skill_barPRO" style="background-color:#1CDCFF">HTML/CSS
                        <span class="skill_level">PRO</span>
                    </li>
                      <li class="skill_barPRO" style="background-color:#7CD14E">Javascript
                        <span class="skill_level">PRO</span>
                    </li>
                      <li class="skill_barADVANCED" style="background-color:#00008B">JQUERY
                        <span class="skill_level">ADVANCED</span>
                    </li>
                     <li class="skill_barINT" style="background-color:#990033">Python
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                     
                      <li class="skill_barINT" style="background-color:darkslateblue">SQL
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                </ul>
                  -Certified Wallstreet Suite v7 Business Consultant
                             <br />
                        <br />
                     <h4>Notable Coursework</h4>
        
              <ul>
                <li>Intermediate HTML</li>
                <li>Graduate Level Algorithms</li>
                <li>Computer Programming for Business</li>
                 <li>Advanced Business Systems Analysis</li>
                <li>Accounting Information Systems</li>
                <li>Developing Business Application Systems</li>
            </ul>

  
                   <ul>
                       
                   </ul>
            <br />
              
           <br />
            
                <p>Grab a copy of my <a href="RESUME.docx">Resume</a> here  <a href="RESUME.docx">
                <img class="documentlogo" src="Pictures/WordLogo.png" height="25" width="25"/> </a>
                <a href="#"><img class="documentlogo" src="Pictures/PDF-Icon.png" height="25" width="25" /></a></p>
          
                        
                        <br />
                 <br />
                      

      
         
</div>

<%--    //**END Page Content***--%>



          </div>
            </div>
     </div>
    </div>
      
   
    


	
	
     
        
</asp:Content>
