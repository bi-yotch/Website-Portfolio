<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="/resume">
<html>
<body>

  <table id="main" cellpadding="4">

    <xsl:for-each select="intro">
    <tr>
      <th style="text-align:center; font-size: 70px; padding-left:410px; padding-top:200px;" colspan="4"><xsl:value-of select="name"/></th>
    </tr>
    <tr>
      <td style="text-align:center; font-size: 35px;  padding-right: 90px;" colspan="4"><xsl:value-of select="post"/><br/></td>
    </tr>
    </xsl:for-each>


    <tr align="left">
      <td colspan="1" style=" padding-left:35px;">
          <table width="90%">

            <tr>
              <th align="left" style="color: darkblue;">PROFILE</th>
            </tr>

          <xsl:for-each select="profile">
            <tr>
              <td style="font-size:20px; padding-top:10px;"><xsl:value-of select="line1"/></td>
            </tr>
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="line2"/></td>
            </tr>
          </xsl:for-each>

          <xsl:for-each select="contact">
            <tr>
              <th align="left" style="color: darkblue;"><br/>CONTACT</th>
            </tr>
            <tr>
              <td style="font-size:23px; padding-top:10px; font-weight: bold;">PHONE</td>
            </tr>
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="phone"/></td>
            </tr>
            <tr>
              <td style="font-size:23px; padding-top:10px; font-weight: bold;">LINKEDIN</td>
            </tr>
            <tr>
              <td style="font-size:20px;"><a href="https://www.linkedin.com/in/zainab-syeda-774b921a0/"> <xsl:value-of select="linkedIn"/> </a></td>
            </tr>
            <tr>
              <td style="font-size:23px; padding-top:10px; font-weight: bold;">EMAIL</td>
            </tr>
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="email"/></td>
            </tr>
          </xsl:for-each>

            <tr>
              <th align="left" style="color: darkblue;"><br/>HOBBIES</th>
            </tr>
            <xsl:for-each select="hobby">
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="hobbyNumber"/>. <xsl:value-of select="hobbyName"/></td>
            </tr>
            </xsl:for-each>
            <tr>
              <td><br/><br/><br/><br/></td>
            </tr>
          </table>

      </td>
      <td span="2">

          <table style="padding-right:20px;">
            <tr>
              <th align="left" style="color: darkblue;font-size:25px;">EDUCATION</th>
            </tr>

            <xsl:for-each select="education/university">
            <tr>
              <td style="font-size:23px; padding-top:10px; font-weight: bold;"><xsl:value-of select="universityName"/></td>
            </tr>
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="duration"/></td>
            </tr>
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="degree"/></td>
            </tr>
            </xsl:for-each>

            <xsl:for-each select="education/school">
            <tr>
              <td style="font-size:23px; padding-top:10px; font-weight: bold;"><xsl:value-of select="schoolName"/></td>
            </tr>
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="duration"/></td>
            </tr>
            </xsl:for-each>

              <xsl:for-each select="education/school/achievements">
            <tr>
              <td style="font-size:20px;"><b><xsl:value-of select="title"/></b><xsl:value-of select="description"/></td>
            </tr>
              </xsl:for-each>

            <xsl:for-each select="education/primarySchool">
              <tr>
                <td style="font-size:23px; padding-top:10px; font-weight: bold;"><xsl:value-of select="primarySchoolName"/></td>
              </tr>
              <tr>
                <td style="font-size:20px;"><xsl:value-of select="duration"/></td>
              </tr>
            </xsl:for-each>

            <tr>
              <td style="font-size:25px; color:darkblue; font-weight: bold;"><br/>SKILLS</td>
            </tr>
          <xsl:for-each select="skills">
            <tr>
              <td style="font-size:20px;"><xsl:value-of select="name"/> - <xsl:value-of select="type"/></td>
            </tr>
          </xsl:for-each>

          <tr>
            <td style="font-size:25px; color:darkblue; font-weight: bold;"><br/>COMPETENCIES</td>
          </tr>
          <xsl:for-each select="competencies">
          <tr>
            <td style="font-size:20px;"><xsl:value-of select="name"/> - <xsl:value-of select="type"/></td>
          </tr>
          </xsl:for-each>
          <tr>
          <td><br/><br/></td>
          </tr>
          </table>
      </td>
    </tr>

    </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
