<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>podcast - M04 </title>
                <link rel="stylesheet" href="./css/style.css"/>
                <link rel="icon" type="image/x-icon" href="./img/icono.ico"/>
            </head>
            <body>
                <header>
                    <div class="container">
                        <a href="#" class="logo">
                            <h1>PodHN Music</h1>
                        </a>
                        <nav class="navbar">
                            <ul class="menu">
                                <li class="navbar-item">
                                    <a href="./index.html">Home</a>
                                </li>
                                <li class="navbar-item">
                                    <a href="./myMusic.xml">Podcast</a>
                                </li>
                                <li class="navbar-item">
                                    <a href="#">Contact</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <main>
                    <article class="container">
                        <section class="podcast">
                            <div class="channel-container">
                                <div class="channel">
                                    <div class="channel-logo">
                                        <img  class="logo-page" src="{./rss/channel/image/url}" alt="logo"/>
                                    </div>
                                    <div class="channel-info">
                                        <h6>
                                            <xsl:value-of select="./rss/channel/pubDate"/>
                                        </h6>
                                        <h2>
                                            <xsl:value-of select="./rss/channel/title"/> 
                                        </h2>
                                        <h6>
                                            <xsl:value-of select=".//rss/channel/category"/>
                                        </h6>
                                    </div>
                                </div>
                                <div class="seguir">
                                    <div class="info-container">
                                        <div class="info">
                                            <div class="content">
                                                <h2>Información</h2>
                                                <p>
                                                    <xsl:value-of select=".//rss/channel/description"/>
                                                </p>
                                                <a href="#" class="btn">View all page</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <ul class="podcast-list">
                                <h2>Todas las Canciones</h2>
                                <xsl:for-each select="rss/channel/item">
                                    <div class="channel-container">
                                        <div class="channel">
                                            <div class="channel-logo"><img src="{enclosure[1]/@url}" alt="logo"/></div>
                                            <div class="channel-info">
                                                <h2 class="title-song">
                                                    <xsl:value-of select="title"></xsl:value-of> | 
                                                    <xsl:value-of select="substring-before(substring-after(author, '('), ')')"></xsl:value-of>  |                                                  <span class="song-type">
                                                    <xsl:value-of select="category"></xsl:value-of>
                                                    </span>
                                                </h2>
                                                <h6>
                                                    <xsl:value-of select="pubDate"/>
                                                </h6>
                                                <audio class="audio" controls="" src="{enclosure[2]/@url}"> Tu navegador no soporta audio HTML5.</audio>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </ul>
                        </section>
                    </article>
                </main>
                <footer>
                    <div class="footer-container">
                        <p> ©  2023  <a href="#">Jose Mejia - M04 RSS</a>. All Rights Reserved</p>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

