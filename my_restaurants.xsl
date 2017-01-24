<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="2.0">
<xsl:template match="/">

<html>
	<head>
	<title>Ресторанти в България</title>
	</head>
	<style>
		body {font-family: 'Arial'; font-size: 15px; }
		.header-page { text-align: center; padding: 5px 0; margin-bottom: 26px; background-color: bisque; }
		.container { padding: 0 15px; margin: 0 auto; width: 70%; }
		.row { margin-right: -15px; margin-left: -15px; }
		.row.filter { margin-bottom: 26px; }
		.row.filter form,
		.row.filter h2 { padding-left: 15px; }
		.row.filter select,
		.row.filter input[type="submit"] { margin-right: 30px; font-size: 18px; }
		.col-md-12 { padding-right: 15px; padding-left: 15px; }
		table { border-collapse: collapse; }
		.main-table, 
		.main-table > tr,
		.main-table > td { border: 1px solid #808080; }
		.char-table h4 { margin-top: 0px; }
		.char-table,
		.char-table td,
		.main-table > td:nth-child(2) { border: 0px; }
		.char-table .td-header { width: 130px; padding-right: 35px; text-transform: uppercase; }
		.main-table .td-img img { padding: 25px; }
		th, td { text-align: left; padding: 5px; }
		th { background-color: #4d94ff; color: white; }
		tr:hover{ background-color:#f5f5f5; }
	</style>
	<body>
		<div class="header-page">
			<h1>Каталог на ресторантите в България</h1>
		</div>
		<div class="container">
			<div class="row filter">
				<h2>Филтрирай ресторантите по регион (град) и тип на кухнята:</h2>
				<form action="">
					<select name="region-filter">
						<option value="">Избери град</option>
						<option value="sofia">София</option>
						<option value="plovdiv">Пловдив</option>
						<option value="burgas">Бургас</option>
					</select>
					<select name="kitchen-filter">
						<option value="">Избери кухня</option>
						<option value="asian">Азиатска</option>
						<option value="bulgaria">Българска</option>
						<option value="fish">Рибни специалитети</option>
					</select>
					<input type="submit" value="Търси"/>
				</form>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table class="main-table">
						<xsl:for-each select="restaurants_in_Bulgaria/Restaurants/restaurant">
						<tr>
							<td class="td-img">
								<img>
									<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
									<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
									<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
								</img>
							</td>
							<td>
								<table class="char-table">
									<tr>
										<td colspan="2">
											<h4><xsl:value-of select="name"/></h4>
										</td>
									</tr>
									<tr>
										<td class="td-header">Регион</td>
										<td><xsl:value-of select="region"/></td>
									</tr>
									<tr>
										<td class="td-header">Адрес</td>
										<td><xsl:value-of select="address"/></td>
									</tr>
									<tr>
										<td class="td-header">Услуги</td>
										<td><xsl:value-of select="service"/></td>
									</tr>
									<tr>
										<td class="td-header">Брой места</td>
										<td><xsl:value-of select="seats"/></td>
									</tr>
									<tr>
										<td class="td-header">Тип кухня</td>
										<td><xsl:value-of select="kitchen"/></td>
									</tr>
								</table>
							</td>
						</tr>
						</xsl:for-each>


						<xsl:for-each select="restaurants_in_Bulgaria/types/Plovdiv_region/restaurant">
						<tr>
							<td class="td-img">
								<img>
									<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
									<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
									<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
								</img>
							</td>
							<td>
								<table class="char-table">
									<tr>
										<td colspan="2">
											<h4><xsl:value-of select="name"/></h4>
										</td>
									</tr>
									<tr>
										<td class="td-header">Регион</td>
										<td><xsl:value-of select="region"/></td>
									</tr>
									<tr>
										<td class="td-header">Адрес</td>
										<td><xsl:value-of select="address"/></td>
									</tr>
									<tr>
										<td class="td-header">Услуги</td>
										<td><xsl:value-of select="service"/></td>
									</tr>
									<tr>
										<td class="td-header">Брой места</td>
										<td><xsl:value-of select="seats"/></td>
									</tr>
									<tr>
										<td class="td-header">Тип кухня</td>
										<td><xsl:value-of select="kitchen"/></td>
									</tr>
								</table>
							</td>
						</tr>
						</xsl:for-each>

						<xsl:for-each select="restaurants_in_Bulgaria/types/Burgas_region/restaurant">
						<tr>
							<td class="td-img">
								<img>
									<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
									<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
									<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
								</img>
							</td>
							<td>
								<table class="char-table">
									<tr>
										<td colspan="2">
											<h4><xsl:value-of select="name"/></h4>
										</td>
									</tr>
									<tr>
										<td class="td-header">Регион</td>
										<td><xsl:value-of select="region"/></td>
									</tr>
									<tr>
										<td class="td-header">Адрес</td>
										<td><xsl:value-of select="address"/></td>
									</tr>
									<tr>
										<td class="td-header">Услуги</td>
										<td><xsl:value-of select="service"/></td>
									</tr>
									<tr>
										<td class="td-header">Брой места</td>
										<td><xsl:value-of select="seats"/></td>
									</tr>
									<tr>
										<td class="td-header">Тип кухня</td>
										<td><xsl:value-of select="kitchen"/></td>
									</tr>
								</table>
							</td>
						</tr>
						</xsl:for-each>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>