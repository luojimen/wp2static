<?xml version="1.0" encoding="UTF-8"?>
	<xsl:stylesheet version="2.0"
    xmlns:ns="http://www.sitemaps.org/schemas/sitemap/0.9"
		xmlns:html="http://www.w3.org/TR/REC-html40"
		xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
		xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml">
      <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
      <title>XML Sitemap</title>
      </head>
      <body>
      <style type="text/css">
                        body {
                          font-family: Open Sans,sans-serif;
                          font-size: 16px;
                          color: black;
                        }
                        h1 {
                          color: #777;
                        }
                        table {
                          border: none;
                          border-collapse: collapse;
                          width: 100%;
                        }
                        #sitemap tr:nth-child(odd) td {
                          background-color: #F7F7F7 !important;
                          color: black;
                        }
                        #content {
                          margin: 0 auto;
                          width: 768px;
                        }
                        a {
                          color: inherit;
                          text-decoration: none;
                        }
                        a:hover {
                          text-decoration: underline;
                        }
                        #heading a {
                          color: #37B5E9;
                        }
                        th {
                          padding-right:3rem;
                          padding: 6px 10px;
                          border: 1px solid #eee;
                          text-align:left;
                          font-size:14px;
                          white-space: nowrap
                        }
                        td {
                          font-size:15px;
                          padding: 6px 10px;
                          border: 1px solid #eee;
                        }
                        span.current{
                          color: #666 !important;
                          font-weight: bold;
                        }
                        #breadcrumb { 
                          margin-bottom: 25px; 
                          font-size: 15px;
                          font-weight: 600; 
                          letter-spacing: 1px; 
                          text-transform: uppercase; 
                        }
                        #breadcrumb .sep{
                          color: #888;
                          padding: 0 0 0 3px;
                        }
                        #heading #breadcrumb a 
                        { 
                          color: #666;
                          text-decoration: underline;
                          font-weight: bold;
                          letter-spacing: 0;
                        }

                        #footer{
                          padding: 10px 0;
                        }

                        #footer strong{
                          font-weight: 600;
                        }
      </style>
      <div id="content">
      <div id="heading">
        <h1>XML Sitemap</h1>
        <xsl:for-each select="sitemapindex|ns:sitemapindex">
          <p>This sitemap file contains <xsl:value-of select="count(../sitemap|ns:sitemap)"/> URLs.</p>
        </xsl:for-each>
        <div id="breadcrumb">
          <span class="current">XML Sitemap Index</span>
        </div>
      </div>
      <table id="sitemap">
      <tbody>
      <tr>
          <th>URL</th>
          <th>Last Modified</th>
      </tr>

      <xsl:for-each select="sitemapindex|ns:sitemapindex">
        <xsl:for-each select="../sitemap|ns:sitemap">
          <tr>
            <td>
            <a><xsl:attribute name="href">
                    <xsl:value-of select="loc|ns:loc"/></xsl:attribute>
                    <xsl:value-of select="loc|ns:loc"/>
            </a>
          </td>
          <td><xsl:value-of select="lastmod|ns:lastmod" /></td>
          </tr>
        </xsl:for-each>
      </xsl:for-each>
      </tbody>
      </table>
      <p id="footer">Generated by <a href="https://www.click5interactive.com/wordpress-sitemap-plugin/?utm_source=sitemap-plugin&amp;utm_medium=xml&amp;utm_campaign=wp-plugins" target="_blank" rel="nofollow" style="color:#37B5E9"><strong>Sitemap by click5</strong></a> plugin.</p>
      </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>