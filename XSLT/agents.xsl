<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/collection">
     <html>
     	<body style="font-family:Arial;">
		    <h1>OUR AGENTS</h1>
     		<table style="background: #eaedf2;">
			   <tr>
     				<th>Name</th>
     				<th>Phone no.</th>
     				<th>Email Id</th>
                  </tr>
                  <xsl:for-each select="agent">
                  	<tr>
                  		<td><xsl:value-of select="name"/></td>
                  		<td><xsl:value-of select="phone"/></td>
                  		<td><xsl:value-of select="emailid"/></td>
                  	</tr>
                  </xsl:for-each>
     		</table>
     	</body>

     </html>

    </xsl:template>

	</xsl:stylesheet>