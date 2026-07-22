<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>RSS — Michael Crump</title>
        <link rel="icon" href="assets/favicon.svg?v=20260722-1" type="image/svg+xml"/>
        <link rel="stylesheet" href="assets/css/site.css?v=20260722-5"/>
      </head>
      <body>
        <a class="skip-link" href="#content">Skip to content</a>
        <header class="site-header">
          <div class="shell header-inner">
            <a class="brand" href="./"><span class="brand-mark">MC</span><span>Michael Crump</span></a>
            <nav aria-label="Primary navigation">
              <a href="./">Home</a><a href="archive.html">Archive</a><a href="about.html">About</a><a aria-current="page" href="feed.xml">RSS</a>
            </nav>
          </div>
        </header>
        <main id="content" class="shell feed-page">
          <p class="eyebrow">Follow along</p>
          <h1>RSS feed</h1>
          <p class="lede"><xsl:value-of select="atom:feed/atom:subtitle"/></p>
          <p class="feed-meta">Last updated <xsl:value-of select="atom:feed/atom:updated"/></p>
          <xsl:choose>
            <xsl:when test="atom:feed/atom:entry">
              <div class="feed-list"><xsl:for-each select="atom:feed/atom:entry"><article><p class="feed-meta"><xsl:value-of select="atom:published"/></p><h2><a href="{atom:link[@rel='alternate']/@href}"><xsl:value-of select="atom:title"/></a></h2><p><xsl:value-of select="atom:summary"/></p></article></xsl:for-each></div>
            </xsl:when>
            <xsl:otherwise><div class="feed-empty"><p>No new posts have been published yet.</p></div></xsl:otherwise>
          </xsl:choose>
          <p class="feed-subscribe"><a class="button" href="feed.xml">Use this feed URL</a></p>
        </main>
        <footer class="site-footer"><div class="shell footer-inner"><p>© 2026 Michael Crump</p><div class="footer-links"><a href="https://github.com/mbcrump">GitHub</a><a href="https://www.linkedin.com/in/mbcrump">LinkedIn</a><a href="feed.xml">RSS</a></div></div></footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
