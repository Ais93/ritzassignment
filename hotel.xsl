<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version ="1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
	table {
		margin: auto;
	}
	
	td {
		padding: 10px;
	}
</style>
</head>
<body>
	<h3>Available Rooms</h3>
	<table border="2">
		<tr>
			<th>No. of Rooms</th>
			<th>Type</th>
			<th>Price</th>
			<th>Date</th>
		</tr>
		<xsl:for-each select ="HOTEL/ROOM">
		<xsl:if test="DATE = 'Monday 11/07/2016'">
		<tr>
			<td><xsl:value-of select="AMOUNT"/></td>
			<td><xsl:value-of select ="TYPE"/></td>
			<td><xsl:value-of select ="PRICE"/></td>		
			<td><xsl:value-of select ="DATE"/></td>		
		</tr>	
		</xsl:if>
		</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>