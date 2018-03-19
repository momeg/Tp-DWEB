<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>
		    Pays du monde 
		  </title>
			</head>
			<body style="background-color:white;">
				<h1>Les pays du monde</h1>
		      Mise en forme par : Lisa Silvestri, Mohammed Megzari (B3322)
		      <xsl:apply-templates/>
				<table border="3" width="1300" align="center">
					<tr>
						<th>N°</th>
						<th>Nom</th>
						<th>Capitale</th>
						<th>Continent<br/>Sous-continent</th>
						<th>Voisins</th>
						<th>Coordonnées</th>
						<th>Drapeau</th>
					</tr>
					<xsl:for-each select="//country">
					
						<tr>
							<td>
								<xsl:value-of select="position()"/>
							</td>
							<td>
									<font color="green">
									<xsl:value-of select="name/common"/>
									</font>
									(<xsl:value-of select="name/official"/>)
									<xsl:if test="name/native_name/@lang = 'fra'">
										<font color="brown">
										<xsl:text> Nom français : </xsl:text>
										<xsl:value-of select="name/native_name[@lang='fra']/official"/>
										</font>
								</xsl:if>
									
							</td>
							<td>
								<xsl:value-of select="capital"/>
							</td>
							<td>
							Continent :
								<xsl:value-of select="infosRegion/region"/>
							Sous-continent :
								<xsl:value-of select="infosRegion/subregion"/>
							</td>
							<td>
								<xsl:if test="count(borders) &gt; 0">
									<xsl:for-each select="borders">
										<xsl:value-of select="//country[codes/cca3 = current()]/name/common"/>
										<xsl:if test="position() != last() ">
											,
										</xsl:if>
									</xsl:for-each>
								</xsl:if>
							</td>
							<td>
								Latitude :
									<xsl:value-of select="coordinates/@lat"/>
								Longitude :
								<xsl:value-of select="coordinates/@long"/>
							</td>
							<td>
								<xsl:element name="img">
									<xsl:attribute name="src">
										http://www.geonames.org/flags/x/
										<xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
  										<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
  										<xsl:value-of select="translate(codes/cca2,$uppercase , $smallcase)" />
										.gif
									</xsl:attribute>
									<xsl:attribute name="alt"/>
									<xsl:attribute name="height">60</xsl:attribute>
									<xsl:attribute name="width">80</xsl:attribute>
								</xsl:element>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="metadonnees">
		<p style="text-align:center; color:blue;">
			Objectif : <xsl:value-of select="objectif"/>
		</p>
		<hr/>
	</xsl:template>
	<xsl:template match="country"/>
	
</xsl:stylesheet>
