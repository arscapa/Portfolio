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
            <p class="quote"><b>Continuously striving to breakdown processes to develop innovative solutions and create efficiencies.</b></p>
                
                  <p> Began my career as a Staff Accountant with Exelon where my knowledge of programming & systems has allowed me to utilize technology in order to drastically
                      increase my productivity. I've since moved on to a position as a Financial Systems Analyst where I look to further my knowledge in the field. 
                      I'm currently working towards obtaining a Masters Degree and in my free time I enjoy tackling DIY projects and consider myself a passionate gearhead. 
                      Take a look around at some of the projects I've worked on over the years!
                </p>
                  <hr />
            
            <h2>Experience</h2>
            <img src="Pictures/Exelon_logo.png" id="Exelon_logo"/>
            
                  <h4> Financial Systems Analyst </h4> 
                  <ul> 
                    <li>Automated through scripting a highly manual process saving an estimated 65 hrs. per year</li>
                    <li>Implemented Money Pool related system configuration saving an estimated $4,400/yr.</li>
                    <li>Won Q3 Employee Recognition Award & finished 2nd Place in Controllership Innovation Expo</li>
                    <li>Serve as SME providing application support and training to Treasury and Cash Accounting</li>
                      </ul>
                    <h4> Staff Accountant </h4> 
                  <ul> 
                    <li>Compiled and reviewed forecast and budget for several departments</li>
                    <li>Lead monthly revenue and balance sheet review meetings</li>
                </ul>
               <h4> Associate Staff Accountant </h4> 
                  <ul> 
                    <li>Processed monthly billing templates and cost allocations to business units</li>
                    <li>Participated in UAT for systems integration in support of a $6.8 billion merger</li>
                    <li>Perform variance analysis and fulfill ad hoc requests for internal and external sources</li>
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
                      <li class="skill_barPRO" style="background-color:#7CD14E">JAVASCRIPT/JQUERY
                        <span class="skill_level">PRO</span>
                    </li>
                      <li class="skill_barADVANCED" style="background-color:#00008B">SQL
                        <span class="skill_level">ADVANCED</span>
                    </li>
                     <li class="skill_barINT" style="background-color:#990033">PYTHON
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                     
                      <li class="skill_barINT" style="background-color:darkslateblue">C++
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                </ul>

                  <h2>Certifications</h2>
                   <img src="Pictures/Badges/CPA_Badge.png" title="Certified Public Accontant" width="100" height="100"/>
                   <a href="https://www.credly.com/badges/d641e61e-d822-4118-9f24-969d65f535c4/linked_in_profile" target="_blank">
                   <img src="Pictures/Badges/az900.png" title="Microsoft Azure Fundamentals (AZ900)" width="100" height="100"/></a>
                   
                  <a href="https://www.credly.com/badges/4a2ef83f-6648-4050-a01d-ef718d51f9f5/linked_in_profile" target="_blank">
                  <img src="Pictures/Badges/az500.png" title="Microsoft Azure Security Engineer (AZ500)" /></a>


                  <a href="https://www.credly.com/badges/db590d30-4be4-4800-9d62-6096c45ef375?source=linked_in_profile" target="_blank">
                  <img src="Pictures/Badges/CompTIA_Security.png" title="CompTIA Security+" /></a>

          
                  <img src="Pictures/Badges/WSS.png" title="Certified Wallstreet Suite v7 Business Consultant" />                 
                

                
                     <h2>Notable Coursework</h2>
              <ul>
                <li>Intermediate HTML</li>
                <li>Algorithms and Data Structures</li>
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
