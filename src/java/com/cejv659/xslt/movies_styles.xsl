<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <title>Bootstrapped Movies</title>
            <link rel="stylesheet" type="text/css" href="bootstrap.min.css" />
            <link rel="stylesheet" type="text/css" href="addstyles.css"/>
            <body>
                <table class="table table-hover"  id="csstable" style="width: 80%; position: relative; margin-left: 5em; margin-top: 2em;">
                    <thead>
                        <th>
                            <span>All movies</span>
                        </th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="movies/movie">
                            <tr>
                                <td>
                                    <span class="biggerCopy">
                                        <xsl:value-of select="title" />
                                    </span>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="italic">
                                    Rating:
                                </td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="rank='13+'">
                                            <span class="roundborder">
                                                <xsl:value-of select="rank" />
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="rank" />
                                        </xsl:otherwise>
                                    </xsl:choose>                                
                                </td>
                            </tr>
                            <xsl:if test="duration != ''">
                                <tr>
                                    <td class="italic">
                                        Lentgh:
                                    </td>
                                    <td>
                                        <span>
                                            <xsl:value-of select="duration" />
                                        </span>                                
                                    </td>
                                </tr>
                            </xsl:if>                            
                            <tr>
                                <td class="italic">
                                    Showtimes:
                                </td>
                                <td>
                                    <xsl:for-each select="showingon/showtime">
                                        <xsl:choose>
                                            <xsl:when test="position()=last()">
                                                <xsl:value-of select="."/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="."/>; 
                                            </xsl:otherwise>
                                        </xsl:choose>                                        
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr>
                                <td class="italic">
                                    Starring:
                                </td>
                                <td>
                                    <xsl:for-each select="actors/actor">
                                        <xsl:choose>
                                            <xsl:when test="position()=last()">
                                                <xsl:value-of select="."/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="."/>;
                                            </xsl:otherwise>
                                        </xsl:choose>                                        
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr>
                                <td class="italic">
                                    Directed by:
                                </td>
                                <td>
                                    <xsl:for-each select="directors/director">
                                        <xsl:choose>
                                            <xsl:when test="position()=last()">
                                                <xsl:value-of select="."/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="."/>;
                                            </xsl:otherwise>
                                        </xsl:choose>                                        
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr>
                                <td class="italic">
                                    Produced by:
                                </td>
                                <td>
                                    <xsl:for-each select="producers/producer">
                                        <xsl:choose>
                                            <xsl:when test="position()=last()">
                                                <xsl:value-of select="."/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="."/>;
                                            </xsl:otherwise>
                                        </xsl:choose>                                        
                                    </xsl:for-each>
                                </td>
                            </tr>
                            <tr>
                                <xsl:if test="writers != ''">
                                    <td class="italic">
                                        Written by:
                                    </td>
                                    <td>
                                        <xsl:for-each select="writers/writer">
                                            <xsl:choose>
                                                <xsl:when test="position()=last()">
                                                    <xsl:value-of select="."/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="."/>;
                                                </xsl:otherwise>
                                            </xsl:choose>                                        
                                        </xsl:for-each>
                                    </td>
                                </xsl:if>
                            </tr>
                            <tr>
                                <td class="italic">
                                    Studio:
                                </td>
                                <td>
                                    <xsl:for-each select="studios/studio">
                                        <xsl:choose>
                                            <xsl:when test="position()=last()">
                                                <xsl:value-of select="."/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="."/>;
                                            </xsl:otherwise>
                                        </xsl:choose>                                        
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>