<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="msxsl"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt">
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy>
	</xsl:template>

	<!-- Adding references to 'System.Data.Services.dll' and 'System.Data.Services.Client.dll' -->
	<xsl:template match="/configuration/system.web/compilation/assemblies">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />

			<xsl:if test="count(add[@assembly='System.Data.Services, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089']) = 0">
				<add assembly="System.Data.Services, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" />
			</xsl:if>

			<xsl:if test="count(add[@assembly='System.Data.Services.Client, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089']) = 0">
				<add assembly="System.Data.Services.Client, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" />
			</xsl:if>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="/configuration">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />

			<xsl:if test="count(system.serviceModel) = 0">
				<system.serviceModel>
					<serviceHostingEnvironment multipleSiteBindingsEnabled="true" />
				</system.serviceModel>
			</xsl:if>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="/configuration/system.serviceModel">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />

			<xsl:if test="count(serviceHostingEnvironment) = 0">
				<serviceHostingEnvironment multipleSiteBindingsEnabled="true" />
			</xsl:if>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="/configuration/system.serviceModel/serviceHostingEnvironment">
		<xsl:copy>
			<xsl:apply-templates select="@*" />

			<xsl:if test="count(./@multipleSiteBindingsEnabled) = 0">
				<xsl:attribute name="multipleSiteBindingsEnabled">true</xsl:attribute>
			</xsl:if>

			<xsl:apply-templates select="node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>
