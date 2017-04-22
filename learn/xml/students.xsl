<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

<xsl:template match='/'>
  <html xmlns='http://www.w3.org/1999/xhtml' lang='en'>
    <head>
      <meta charset='utf-8' />
      <title>Students list</title>
    </head>
    <body>
      <h1>Students</h1>
      <table style='border: 1px solid;'>
        <tr style='background-color: #9acd32;'>
          <th>First name</th>
          <th>Second name</th>
        </tr>
        <xsl:for-each select='students/student'>
          <tr>
            <td><xsl:value-of select='first_name'/></td>
            <td><xsl:value-of select='last_name'/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
