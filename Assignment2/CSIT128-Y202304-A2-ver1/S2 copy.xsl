<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/forecast">
        <html>
            <head>
                <title>Part 3</title>
            </head>
            <body>
                <h1><xsl:value-of select="@queryLocation"/> <xsl:value-of select="@queryLocation"/></h1>

                <table border="1">
                    <tr>
                        <th align="center">Date</th>
                        <th align="center">Mon</th>
                        <th align="center">Tue</th>
                        <th align="center">Wed</th>
                        <th align="center">Thu</th>
                        <th align="center">Fri</th>
                        <th align="center">Sat</th>
                        <th align="center">Sun</th>
                    </tr>

                    <xsl:for-each select="person">
                        <xsl:sort select="@yyyymmdd"/>
                        <tr>
                            <td>
                                <xsl:value-of select="date"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="month"/>
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="dayOfWeek = 'Mon'">
                                        <xsl:value-of select name="lowest"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select name="highest"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="overallCode"/>
                                                <xsl:text>.png</xsl:text>
                                            </xsl:attribute>

                                            <xsl:attribute name="width">
                                                <xsl:text>30px</xsl:text>
                                            </xsl:attribute>
                                        </img>
                                        <xsl:value-of select name="overall"/>
                                    </xsl:when>

                                    <xsl:otherwise>
                                        <xsl:text></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="dayOfWeek = 'Tue'">
                                        <xsl:value-of select name="lowest"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select name="highest"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="overallCode"/>
                                                <xsl:text>.png</xsl:text>
                                            </xsl:attribute>

                                            <xsl:attribute name="width">
                                                <xsl:text>30px</xsl:text>
                                            </xsl:attribute>
                                        </img>
                                        <xsl:value-of select name="overall"/>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <xsl:text></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="dayOfWeek = 'Wed'">
                                        <xsl:value-of select name="lowest"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select name="highest"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="overallCode"/>
                                                <xsl:text>.png</xsl:text>
                                            </xsl:attribute>

                                            <xsl:attribute name="width">
                                                <xsl:text>30px</xsl:text>
                                            </xsl:attribute>
                                        </img>
                                        <xsl:value-of select name="overall"/>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <xsl:text></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="dayOfWeek = 'Thu'">
                                        <xsl:value-of select name="lowest"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select name="highest"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="overallCode"/>
                                                <xsl:text>.png</xsl:text>
                                            </xsl:attribute>

                                            <xsl:attribute name="width">
                                                <xsl:text>30px</xsl:text>
                                            </xsl:attribute>
                                        </img>
                                        <xsl:value-of select name="overall"/>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <xsl:text></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="dayOfWeek = 'Fri'">
                                        <xsl:value-of select name="lowest"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select name="highest"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="overallCode"/>
                                                <xsl:text>.png</xsl:text>
                                            </xsl:attribute>

                                            <xsl:attribute name="width">
                                                <xsl:text>30px</xsl:text>
                                            </xsl:attribute>
                                        </img>
                                        <xsl:value-of select name="overall"/>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <xsl:text></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="dayOfWeek = 'Sat'">
                                        <xsl:value-of select name="lowest"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select name="highest"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="overallCode"/>
                                                <xsl:text>.png</xsl:text>
                                            </xsl:attribute>

                                            <xsl:attribute name="width">
                                                <xsl:text>30px</xsl:text>
                                            </xsl:attribute>
                                        </img>
                                        <xsl:value-of select name="overall"/>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <xsl:text></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="dayOfWeek = 'Sun'">
                                        <xsl:value-of select name="lowest"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select name="highest"/>
                                        <img>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="overallCode"/>
                                                <xsl:text>.png</xsl:text>
                                            </xsl:attribute>

                                            <xsl:attribute name="width">
                                                <xsl:text>30px</xsl:text>
                                            </xsl:attribute>
                                        </img>
                                        <xsl:value-of select name="overall"/>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <xsl:text></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>