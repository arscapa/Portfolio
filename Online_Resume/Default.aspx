<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.vb" Inherits="Online_Resume.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class="jumbotron">
     
        <h1>Welcome to my Site</h1>
        <p>Navigate around to learn more about me.</p>
      </div>
     
    
    <div class="page-width">

<%--    //** NAVIGATION MENU ***--%>
        <div class ="nav_menu">
            <ul>
                <li class="active"><span class="nav_span"><a href="#" class="active">About Me</a></span></li>
                <li><span class="nav_span"> <a href="#"> Projects</a></span></li>
                <li><span class ="nav_span"><a href="#">Websites</a></span></li>
                <li><span class ="nav_span"><a href="#">Code Samples</a></span></li>
            </ul>
          
        </div>
<%--    //** END NAVIGATION MENU ***--%>


        <div class ="page-background">
      <div class="content-container">
          <div class="content">
       
 <%--    //**Start of "ABOUT ME" Content***--%>


              <br />
     <%-- DIV Naming Convention = text of the navigation menu button but with spaces replaced by underscore--%>
              <div id="About_Me">
    
    <h2>Preface</h2>
            <p>Throughout the years, I have developed and pursued a wide variety of interests, however, I have always maintained a love for programming and developing websites and applications. My interest
                in web development all began back in grade school when I realized by copying all of the HTML code on a web page I could mirror 
                familiar web pages. From here my interest in programming and web development really took off as I realized I could develop my own web
                pages with just a little bit of HTML and CSS. 
                </p>

            <h2>My Education</h2> 
                <img id="grad_pic" src="Pictures/AboutPage/headshot.jpg" />
            <h4>Illinois State University <a href="http://ilstu.edu" target="_blank"><img src="Pictures/AboutPage/ISU_Bird.jpg" class="img-circle" alt="ISU Redbird" id="ReggieRedbird"/></a></h4>
                <p>Bachelor's of Science Accounting & Business Information Systems</p>
                <p>GPA 3.48/4.0</p>
            
                <h3>CPA Progress</h3>
                <ul class="CPA"> 
                    <li>AUD- Passed 8/13</li>
                    <li>FAR- Passed 11/13</li>
                    <li>BEC- Passed 1/14</li>
                    <li>REG- Passed 11/14</li>
                    <li>Ethics- Passed 12/14</li>
                </ul>
                <p>Certificate Number: 104266</p>
              <br />
            <br />
            

            <div id="trigger3"></div>
          
      <h3>Competencies</h3>
            
            
                 <ul class="skills">
                    <li class="skill_bar1" style="background-color:#FF5353">MICROSOFT EXCEL
                        <span class="skill_level">PRO </span>
                    </li>
                    <li class="skill_bar1" style="background-color:#1CDCFF">HTML
                        <span class="skill_level">PRO</span>
                    </li>
                    <li class="skill_bar3" style="background-color:#C799FF">CSS
                        <span class="skill_level">SEMI-PRO</span>
                    </li>
                     <li class="skill_bar4" style="background-color:#990033">Python
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                      <li class="skill_bar4" style="background-color:#7CD14E">Javascript
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                      <li class="skill_bar5" style="background-color:darkslateblue"">Photoshop
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                     
                   
                </ul>

                             <br />
           <br />
            
                <p>Grab a copy of my <a href="Anthony_Scapardine_RESUME.docx">Resume</a> here  <a href="Anthony_Scapardine_RESUME.docx">
                <img class="documentlogo" src="Pictures/WordLogo.png" height="25" width="25"/> </a>
                <a href="#"><img class="documentlogo" src="Pictures/PDF-Icon.png" height="25" width="25" /></a></p>
           <br />
                    <a href="http://stackoverflow.com/users/5117533/tony-scap">
<img src="http://stackoverflow.com/users/flair/5117533.png?theme=dark" width="208" height="58" alt="profile for Tony Scap at Stack Overflow, Q&amp;A for professional and enthusiast programmers" title="profile for Tony Scap at Stack Overflow, Q&amp;A for professional and enthusiast programmers" class="vidIMG"/>
</a>
                 
                  <a href="https://github.com/arscapa"> <img src="Pictures/github.png" title="Github profile for Tony Scapardine" width="80" height="58" class="vidIMG"/></a>
               
                        
                        <br />
                
                      

             
            <h3>Notable Coursework</h3>
            <p><b>Illinois State University</b></p>
              <ul>
                <li>Computer Programming for Business</li>
                <li>Business Systems Analysis</li>
                 <li>Advanced Business Systems Analysis</li>
                <li>Accounting Information Systems</li>
                <li>Developing Business Application Systems</li>
               
            </ul>

          <p><b>Lyons Township Highschool</b></p>
                   <ul>
                       <li>Intro to HTML</li>
                       <li>Intermediate HTML</li>
                   </ul>
            <br />
              
</div>

<%--    //**END "ABOUT ME" Page Content***--%>

<%--    //**Start OF "PROJECTS" Page Content***--%>

<div id="Projects">





</div>

<%--    //**END "PROJECTS" Page Content***--%>

<%--    //**Start OF "WEBSITES" Page Content***--%>

<div id="Websites">





</div>

<%--    //**END "WEBSITES" Page Content***--%>

<%--    //**Start OF "CODE SAMPLES" Page Content***--%>

<div id="Code_Samples">





</div>

<%--    //**END "CODE SAMPLES" Page Content***--%>

          </div>
            </div>
     </div>
    </div>
      
   
    


	
	
     
        
</asp:Content>
