<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="2.0">
<xsl:template match="/">

<html>
<head>
<title>Ресторанти в България</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}


th {
    background-color: #4CAF50;
    color: white;
	
}
td:nth-child(1){
width:110px;
}
td:nth-child(2){
width:110px;
}
td:nth-child(3){
width:110px;
}

tr:hover{background-color:#f5f5f5}
	</style>
</head>
<body>
<table border="4">
	<tr>
		<th>Регион</th>
		<th>Име</th>
		<th>Адрес</th>
		<th>Услуги</th>
		<th>Брой места</th>
		<th>Тип кухня</th>
	</tr>
	
	<xsl:for-each select="restaurants_in_Bulgaria/types/Sofian_region/restaurant">
	
	<tr>
		<td>
			<xsl:value-of select="region"/>
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>   
		</td>
		
		<td>
			<xsl:value-of select="address"/>
		</td>
		
		<td>
			<xsl:value-of select="service"/>
		</td>
		
		<td>
			<xsl:value-of select="seats"/>
		</td>

		<td>
			<xsl:value-of select="kitchen"/>
		</td>
	
	</tr>
	
	</xsl:for-each>
	
	<xsl:for-each select="restaurants_in_Bulgaria/types/Plovdiv_region/restaurant">
	
	<tr>
		<td>
			<xsl:value-of select="region"/>
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>   
		</td>
		
		<td>
			<xsl:value-of select="address"/>
		</td>
		
		<td>
			<xsl:value-of select="service"/>
		</td>
		
		<td>
			<xsl:value-of select="seats"/>
		</td>

		<td>
			<xsl:value-of select="kitchen"/>
		</td>
	
	</tr>

	</xsl:for-each>


	<xsl:for-each select="restaurants_in_Bulgaria/types/Plovdiv_region/restaurant">
	
	<tr>
		<td>
			<xsl:value-of select="region"/>
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>   
		</td>
		
		<td>
			<xsl:value-of select="address"/>
		</td>
		
		<td>
			<xsl:value-of select="service"/>
		</td>
		
		<td>
			<xsl:value-of select="seats"/>
		</td>

		<td>
			<xsl:value-of select="kitchen"/>
		</td>
	
	</tr>
	
	</xsl:for-each>


	<xsl:for-each select="restaurants_in_Bulgaria/types/Burgas_region/restaurant">
	
	<tr>
		<td>
			<xsl:value-of select="region"/>
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>   
		</td>
		
		<td>
			<xsl:value-of select="address"/>
		</td>
		
		<td>
			<xsl:value-of select="service"/>
		</td>
		
		<td>
			<xsl:value-of select="seats"/>
		</td>

		<td>
			<xsl:value-of select="kitchen"/>
		</td>
	
	</tr>
	</xsl:for-each>
	
</table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>