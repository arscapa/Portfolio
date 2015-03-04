<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="About_Me.aspx.vb" Inherits="Online_Resume.About_Me" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="jumbotron">
     
        <h1>About Me</h1>
        <p class="quote">"The day you stop learning is the day you stop living"</p>
      </div>

    <div class="learn-more">
        <div class="container">
            <div class="Education">
          <br />
                <h1>Preface</h1>
            <p>Throughout the years, I have developed a pretty wide range of knowledge and I have experience in a lot of different fields 
                spanning the spectrum, however, I have always maintained a love for programming and developing websites and applications. My interest
                in web development all began back in grade school when I realized by copying all of the HTML code on a web page I could mirror 
                familiar web pages. Being somewhat of a prankster, I decided to put this new-found knowledge to use one particular April Fools Day.
                By changing all the links on an email login screen, I was able to redirect the user (my parents in this case) to a page of my choosing
                and trick them into thinking they had done irreperable damage to their computer. For some reason my parents didn't find this prank quite 
                as amusing as I did! From here my interest in programming and web development really took off as I realized I could develop my own web
                pages with just a little bit of HTML and CSS. 
                </p>
                
                <p>I carried this interest in web development through to high school taking all the web development classes that were available to me. However, after moving
                 on to college I began to pursue an education in Business and Accounting and web development took a back seat until my last few
                 years of college when I decided to add Business Information Systems as a second major. It was through this decision that I once again 
                realized the passion I have for web development and although I currently work as a Operations Specialist and am pursuing my CPA,
                I am ultimately looking to get back to what I am truly passionate about.
                 </p>

              

            <h1>My Education</h1> 
             <img id="grad_pic" src="Pictures/Graduation.jpg"/>

            <h3>Illinois State University <a href="http://ilstu.edu" target="_blank"><img src="Pictures/ISU_Bird.jpg" class="img-circle"/></a></h3>
                <p>Bachelor's of Science Accounting & Business Information Systems</p>
                <p>GPA 3.48/4.0</p>
            
                <h4>CPA Progress</h4>
                <ul> 
                    <li>AUD- Passed 8/13</li>
                    <li>FAR- Passed 11/13</li>
                    <li>BEC- Passed 1/14</li>
                    <li>REG- Passed 11/14</li>
                    <li>Ethics- Passed 12/14</li>
                </ul>
                <p>Certificate Number: 104266</p>
          </div> 

          
                   
            
              
                

            <br />
           

            <h2>Competencies</h2>
            
            
                 <ul class="skills">
                    <li class="skill_bar1" style="width:60%; background-color:#FF5353">MICROSOFT EXCEL
                        <span class="skill_level">PRO </span>
                    </li>
                    <li class="skill_bar2" style="width:50%; background-color:#1CDCFF">HTML
                        <span class="skill_level">SEMI-PRO</span>
                    </li>
                    <li class="skill_bar3" style="width:50%; background-color:#C799FF">CSS
                        <span class="skill_level">SEMI-PRO</span>
                    </li>
                    <li class="skill_bar4" style="width:35%; background-color:#7CD14E">ASP.NET
                        <span class="skill_level">INTERMEDIATE</span>
                    </li>
                </ul>
           
           
            
           
           

            <br />
           <br />
            <p>Grab a copy of my <a href="Anthony_Scapardine_RESUME.docx">Resume</a> here  <a href="Anthony_Scapardine_RESUME.docx">
                <img class="documentlogo" src="Pictures/WordLogo.png" height="25" width="25"/> </a>
                <a href="#"><img class="documentlogo" src="Pictures/PDF-Icon.png" height="25" width="25" /></a></p>
           
           
        </div>
</div>

   
</asp:Content>
