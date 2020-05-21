<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body style="background-color:skyblue">
    <h2>Library Record</h2>
    <table border="2" style="background-color:yellow">
      <tr >
        <th>Title</th>
        <th>Author</th>
		<th>Publisher</th>
		<th>Year</th>
		<th>Price</th>
      </tr>
	  
      <xsl:for-each select="catalog/cd">
      <xsl:sort select="price"/>
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="author"/></td>
		<td><xsl:value-of select="publisher"/></td>
		<td><xsl:value-of select="year"/></td>
		<td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
