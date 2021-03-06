<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="2.0">
<xsl:template match="/">

<html>
	<head>
		<title>Ресторанти в България</title>
		<link rel="stylesheet" type="text/css" href="my_restaurants.css"/>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js" type="text/javascript"></script>
		<script src="jquery.sorting.js" type="text/javascript"></script>
	</head>

	<body>
		<div id="SortingBykitchen" class="hide">

		</div>
		<div class="header-page">
			<h1>Каталог на ресторантите в България</h1>
		</div>
		<div class="container">
			<div class="row filter">
				<button id="sortBySeats" data-sort="seats" data-type="number">Сортирай по брой места</button>
				<button id="sortByKitchen" data-sort="kitchen" data-type="text">Сортирай по тип кухня</button>
			</div>
			<div class="row">
				<div class="col-md-12">
	<!-- Main table -->
					<table id="mainTable" class="main-table">
						<xsl:for-each select="restaurants_in_Bulgaria/Restaurants/restaurant">
							<tr class="main-table-row">
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
	<!-- Sorting table by seats -->
					<table id="seatsTable" class="main-table" style="display: none">
						<xsl:for-each select="restaurants_in_Bulgaria/Restaurants/restaurant">
							<xsl:sort select="./seats" data-type="number"/>
							<tr class="main-table-row">
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
											<td class="td-header">Адрес</td>
											<td><xsl:value-of select="address"/></td>
										</tr>
										<tr>
											<td class="td-header">Услуги</td>
											<td><xsl:value-of select="service"/></td>
										</tr>
										<tr>
											<td class="td-header">Брой места</td>
											<td><xsl:value-of select="./seats"/></td>
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
	<!-- Sorting table by kitchen -->
					<table id="kitchenTable" class="main-table sort-table" style="display: none">
						<xsl:for-each select="restaurants_in_Bulgaria/Restaurants/restaurant">
							<xsl:sort select="./kitchen" data-type="text"/>
							<tr class="main-table-row">
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
											<td><xsl:value-of select="./kitchen"/></td>
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