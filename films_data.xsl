<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<style>
				body{
			      font-family: arial, sans-serif;
			      background: #ECE9E6;  /* fallback for old browsers */
			      background: -webkit-linear-gradient(to right, #FFFFFF, #ECE9E6);
			      background: linear-gradient(to right, #FFFFFF, #ECE9E6);
			    }
			    h1{

			    }
			    h2 {
			           font-size: 20px;
			    }
			    .header{
			      height: 80px;
			      margin-right: 100px;
			      margin-left: 100px;
			      background:#000000;
			    }
			    .header a:hover{
			      background-color: #ddd;
			      color: black;
			    }
			    .header a{
			      font-size: 20px;
			      line-height: 70px;
			      text-decoration: none;
			      color: #fff;
			      padding-left: 25px;
			    }
			    .container{
			      margin-right: 100px;
			      margin-left: 100px;
			    }
			    .paragraph{
			      text-align: justify;
			    }
			    ul{
			      list-style-type:none;
			      padding: 0;
			    }
			    li{
			      padding-top: 15px;
			    }
			    table {
			        font-family: arial, sans-serif;
			        border-collapse: collapse;
			        width: 100%;
			      }

			      td, th {
			        border: 1px solid #dddddd;
			        text-align: left;
			        padding: 8px;
			      }

			      tr:nth-child(even) {
			        background-color: #dddddd;
                }
                .tableHead{
                  background:#1a1a1a;
                  color:#fff;
                }
			</style>
			<body>
				<header>
				    <div class="header">
				      <a href="index.html">Back to HomePage</a>
				    </div>
				  </header>
				  <section>
				  <div class="container">
				  	<h2>World Wide Highest-Grossing Films</h2>
				    <table>
					<tr class="tableHead">
						<th>Movie Name</th>
						<th>Production Company</th>
						<th>Distributor</th>
						<th>Realeased Year</th>
						<th>Gross</th>
					</tr>
					    <xsl:for-each select="FILMS_DATA/bollybood">
						   <tr>
								<td><xsl:value-of select="title"/></td>
								<td><xsl:value-of select="productionCompany"/></td>
								<td><xsl:value-of select="distributor"/></td>
								<td><xsl:value-of select="releaseyear"/></td>
								<td><xsl:value-of select="wwgross"/></td>
						   </tr>
					    </xsl:for-each>
				    </table>
				  </div>
				</section>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>