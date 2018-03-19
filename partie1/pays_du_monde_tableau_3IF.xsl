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
				<table border="3" width="600" align="center">
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
