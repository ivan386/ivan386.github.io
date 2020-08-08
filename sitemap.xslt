<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:m="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"/>
	
	<xsl:template match="/">
		<html>
			<head>
				<title>Карта сайта</title>
				<style>
					a {
						display: block;
					}
					span {
						display: none;
					}
				</style>
			</head>
			<body>
				<xsl:apply-templates select="//m:url">
					<xsl:sort select="."/>
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="m:url">
		<xsl:param name="link-name" select="substring-after(., 'https://ivan386.github.io/')"/>
		<a href="{.}" title="xslt-sitemap-a-title: {$link-name}"><span>xslt-sitemap-a-text:</span> /<xsl:value-of select="$link-name"/></a>
	</xsl:template>
	
</xsl:stylesheet>