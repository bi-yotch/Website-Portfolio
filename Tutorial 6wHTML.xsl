<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="/studentCV">
<html>

  <style>
    body {
      margin: 0;
      background: linear-gradient(-220deg, cyan, magenta);
      background-repeat: repeat-x;
    }

    .topnav {
      overflow: hidden;
      background-color: #333;
      font-family: Arial, Helvetica, sans-serif;
    }

    .topnav a {
      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 12px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .topnav a:hover {
      background-color: #ddd;
      color: black;
      text-decoration: underline;
    }

    .topnav a.active {
      background-color: #2B65EC;
      color: white;
      text-decoration: underline;
    }

    .myButton {
      background-color:#333;
     border-radius:25px;
     border:1px solid white;
     display:inline-block;
     cursor:pointer;
     color:#ffffff;
     font-family:Times;
     font-size:18px;
     padding:12px 16px;
     text-decoration:none;
     text-shadow:0px 1px 0px #290ccc;

     float:right;
     margin-top:-4%;
     margin-right:2%;
     cursor:pointer;
    }
    .myButton:hover {
     background-color:black;
    }
    .myButton:active {
     position:relative;
     top:1px;
    }

    <!--Extra styling for the page-->
    .container
    {
        width: 70%;
        height: 100%;
        padding-top: 50px;
        padding-left: 100px;
    }
  </style>




<body id="body">

  <div style="padding-left:16px" class="nav">
    <h1>Syeda Zainab Khaleel</h1>
  </div>

  <button class="myButton" onclick="setRandomColor()">Change background color!</button>

  <div class="topnav" >
    <a href="index.html">Home</a>
    <a href="about.html">About</a>
    <a href="personality.html">Personality</a>
    <a class="active" href="education.html">Education</a>
    <a href="resume.html">Resume</a>
    <a href="favourites.html">Favourites</a>
    <a href="events.html">Events</a>
    <a href="travel.html">Travel</a>
    <a href="sports.html">Sports</a>
    <a href="poetry.html">Poetry</a>
    <a href="references.html">References</a>
    <a href="feedback.html">Feedback</a>
  </div>

  <div class="container">
    <h2>My CV</h2>
     <table border="1" cellpadding="4">
       <tr bgcolor="blue" >
         <th style="text-align:center" colspan="4">Personal Details</th>
       </tr>
       <xsl:for-each select="person">
       <tr>
         <th style="text-align:center" colspan="2">This CV belongs to </th>
         <td colspan="1"><xsl:value-of select="firstName"/></td>
         <td colspan="1"><xsl:value-of select="lastName"/></td>
       </tr>
       <tr>
         <th style="text-align:center" colspan="2">Mobile No.</th>
         <td colspan="2"><xsl:value-of select="mobile"/></td>
       </tr>
       <tr>
         <th style="text-align:center" colspan="2">Email address</th>
         <td colspan="2"><xsl:value-of select="email"/></td>
       </tr>
       </xsl:for-each>

       <tr bgcolor="blue">
         <th style="text-align:center" colspan="4">School</th>
       </tr>
       <tr>
         <th style="text-align:center" colspan="1">Date From</th>
         <th style="text-align:center" colspan="1">Date To</th>
         <th style="text-align:center" colspan="2">School Name</th>
       </tr>
       <xsl:for-each select="education/school">
       <tr>
         <td colspan="1"><xsl:value-of select="dateFrom"/></td>
         <td colspan="1"><xsl:value-of select="dateTo"/></td>
         <td colspan="2"><xsl:value-of select="schoolName"/></td>
       </tr>
       </xsl:for-each>
       <tr bgcolor="blue">
         <th style="text-align:center" colspan="4">University</th>
       </tr>

       <tr>
         <th style="text-align:center" colspan="1">Date From</th>
         <th style="text-align:center" colspan="1">Date To</th>
         <th style="text-align:center" colspan="2">University Name</th>
       </tr>
       <xsl:for-each select="education/university">
       <tr>
         <td colspan="1"><xsl:value-of select="dateFrom"/></td>
         <td colspan="1"><xsl:value-of select="dateTo"/></td>
         <td colspan="2"><xsl:value-of select="universityName"/></td>
       </tr>
       </xsl:for-each>

       <tr bgcolor="blue">
         <th style="text-align:center" colspan="4">Skills</th>
       </tr>
       <tr>
         <th style="text-align:center" colspan="2">Skill Name</th>
         <th style="text-align:center" colspan="2">Skill Type</th>
       </tr>
       <xsl:for-each select="skills">
       <tr>
         <td colspan="2"><xsl:value-of select="name"/></td>
         <td colspan="2"><xsl:value-of select="type"/></td>
       </tr>
       </xsl:for-each>


         <tr bgcolor="blue">
           <th style="text-align:center" colspan="4">Work Experience</th>

         </tr>
         <tr>
           <th style="text-align:center" colspan="1">Company Name</th>
           <th style="text-align:center" colspan="1">Area of Work</th>
           <th style="text-align:center" colspan="1">Description</th>
           <th style="text-align:center" colspan="1">Duration</th>
         </tr>
         <xsl:for-each select="work/workExperience">
         <tr>
           <td><xsl:value-of select="companyName"/></td>
           <td><xsl:value-of select="areaOfWork"/></td>
           <td><xsl:value-of select="description"/></td>
           <td><xsl:value-of select="duration"/></td>
         </tr>
         </xsl:for-each>
       </table>
   </div>

 </body>
</html>
</xsl:template>
</xsl:stylesheet>
