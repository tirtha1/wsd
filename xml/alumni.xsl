<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Employee Information</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>name</th>
						<th>price</th>
						<th>description</th>
						<th>stock</th>
					</tr>
					<xsl:for-each select="merchandize_shop/items">
					<!-- sort by name -->
						<xsl:sort select="name"/>
					
					<!-- show prices above 10 dollars -->
						<xsl:if test="price &gt; 10"> 
						<tr>
							<td>
								<xsl:value-of select="name"/>
							</td>
							<td>
								<xsl:value-of select="price"/>
							</td>
							<td>
								<xsl:value-of select="description"/>
							</td>
							<td>
								<xsl:value-of select="stock"/>
							</td>
						</tr>
						</xsl:if>
						
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>