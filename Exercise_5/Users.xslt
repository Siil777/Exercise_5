<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
		<html>
			<head>
				<style type="text/css">

					body {
					position: absolute;
					border-style: double;
					left: 32%;
					width: 39%;
					top: 30%;
					font-weight: bold;
					font-size: 24px;
					border-top-right-radius: 5%;
					font-family: Georgia, serif;
					transform:  rotate(5deg);
					
					}
					body::before{
					content: "";
					position: absolute;
					top: 0;
					left: 0;
					width: 100%;
					height: 100%;
					background: repeating-linear-gradient( white,white 2%, blue 11.11%, blue 22.22% );
					opacity: 0.2;
					
					}
					html {
						  position: relative;
						}

						html::before {
						  content: "";
						  position: fixed;
						  top: 0;
						  left: 0;
						  width: 100%;
						  height: 100%;
						  background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgba(253,187,45,1) 100%);
						  opacity: 0.2;
						  z-index: -1;
						}
						h1{
						
						position: relative;
						font-family: ALGERIAN, serif;
						}

					
					

				</style>
				<title>User List</title>
			</head>
			<body>
				<h1>User List</h1>
				<ul>
					<xsl:apply-templates select="users/user"/>
				</ul>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="user">
		<li>
			<strong>ID:</strong>
			<xsl:value-of select="id"/>
			<br/>
			<strong>Name:</strong>
			<xsl:value-of select="concat(first_name, ' ', last_name)"/>
			<br/>
			<strong>Email:</strong>
			<xsl:value-of select="email"/>
			<br/>
			<strong>Gender:</strong>
			<xsl:value-of select="gender"/>
			<br/>
			<strong>Country:</strong>
			<xsl:value-of select="country"/>
			<br/>
			<strong>City:</strong>
			<xsl:value-of select="city"/>
			<br/>
		</li>
	</xsl:template>
</xsl:stylesheet>
