<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	<xsl:template match="/">
	<xsl:param name = "pays"/>
		<html>
		<p>
		<xsl:value-of select="//country[name/common = 'France']/name/official"/>
		<xsl:value-of select="//country[name/common = 'France']/capital"/>
		</p>
		</html>
			
		</xsl:template>
</xsl:stylesheet>
