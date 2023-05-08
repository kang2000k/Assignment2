<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/forecast">
        <html>
            <head>
                <title>Part 3</title>

                <style>
                    table {
                        width: 100%;
                        table-layout: fixed;
                    }

                    tr {
                        text-align: center;
                    }
                    
                    .frow, .fcol {
                        background-color: yellow;
                    }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="@queryLocation"/> [<xsl:value-of select="@queryTime"/>]</h1>

                <table border="1px">
                    <tr class="frow">
                        <th>Date</th>
                        <th>Mon</th>
                        <th>Tue</th>
                        <th>Wed</th>
                        <th>Thu</th>
                        <th>Fri</th>
                        <th>Sat</th>
                        <th>Sun</th>
                    </tr>

                    <xsl:for-each select="weather">
                        <xsl:sort select="@yyyymmdd" order="descending"/>
                        <tr>
                            <td class="fcol">
                                <xsl:value-of select="date"/>
                                <xsl:text> </xsl:text>
                                <xsl:choose>
                                    <xsl:when test="month = 1">
                                        <xsl:text>Jan</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 2">
                                        <xsl:text>Feb</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 3">
                                        <xsl:text>Mar</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 4">
                                        <xsl:text>Apr</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 5">
                                        <xsl:text>May</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 6">
                                        <xsl:text>Jun</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 7">
                                        <xsl:text>Jul</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 8">
                                        <xsl:text>Aug</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 9">
                                        <xsl:text>Sep</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 10">
                                        <xsl:text>Oct</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 11">
                                        <xsl:text>Nov</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="month = 12">
                                        <xsl:text>Dec</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>null</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>

                            <td>
                                <xsl:if test="dayOfWeek = 'Mon'">
                                    <xsl:value-of select="lowest"/>
                                    <xsl:text>° - </xsl:text>
                                    <xsl:value-of select="highest"/>
                                    <xsl:text>°</xsl:text>
                                    <br/>
                                    <img width="100px">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="overallCode"/>
                                            <xsl:text>.png</xsl:text>
                                        </xsl:attribute>
                                    </img>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="overallCode = 'cloudy'">
                                            <span style="color: blue">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'thunderstorm' or overallCode = 'rain'">
                                            <span style="color: orange">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'sunny' or overallCode = 'partlySunny'">
                                            <span style="color: red">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="color: grey">
                                                <xsl:text>Null</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                </xsl:if> 
                            </td>

                            <td>
                                <xsl:if test="dayOfWeek = 'Tue'">
                                    <xsl:value-of select="lowest"/>
                                    <xsl:text>° - </xsl:text>
                                    <xsl:value-of select="highest"/>
                                    <xsl:text>°</xsl:text>
                                    <br/>
                                    <img width="100px">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="overallCode"/>
                                            <xsl:text>.png</xsl:text>
                                        </xsl:attribute>
                                    </img>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="overallCode = 'cloudy'">
                                            <span style="color: blue">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'thunderstorm' or overallCode = 'rain'">
                                            <span style="color: orange">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'sunny' or overallCode = 'partlySunny'">
                                            <span style="color: red">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="color: grey">
                                                <xsl:text>Null</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                </xsl:if> 
                            </td>

                            <td>
                                <xsl:if test="dayOfWeek = 'Wed'">
                                    <xsl:value-of select="lowest"/>
                                    <xsl:text>° - </xsl:text>
                                    <xsl:value-of select="highest"/>
                                    <xsl:text>°</xsl:text>
                                    <br/>
                                    <img width="100px">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="overallCode"/>
                                            <xsl:text>.png</xsl:text>
                                        </xsl:attribute>
                                    </img>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="overallCode = 'cloudy'">
                                            <span style="color: blue">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'thunderstorm' or overallCode = 'rain'">
                                            <span style="color: orange">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'sunny' or overallCode = 'partlySunny'">
                                            <span style="color: red">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="color: grey">
                                                <xsl:text>Null</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                </xsl:if> 
                            </td>

                            <td>
                                <xsl:if test="dayOfWeek = 'Thu'">
                                    <xsl:value-of select="lowest"/>
                                    <xsl:text>° - </xsl:text>
                                    <xsl:value-of select="highest"/>
                                    <xsl:text>°</xsl:text>
                                    <br/>
                                    <img width="100px">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="overallCode"/>
                                            <xsl:text>.png</xsl:text>
                                        </xsl:attribute>
                                    </img>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="overallCode = 'cloudy'">
                                            <span style="color: blue">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'thunderstorm' or overallCode = 'rain'">
                                            <span style="color: orange">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'sunny' or overallCode = 'partlySunny'">
                                            <span style="color: red">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="color: grey">
                                                <xsl:text>Null</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                </xsl:if> 
                            </td>

                            <td>
                                <xsl:if test="dayOfWeek = 'Fri'">
                                    <xsl:value-of select="lowest"/>
                                    <xsl:text>° - </xsl:text>
                                    <xsl:value-of select="highest"/>
                                    <xsl:text>°</xsl:text>
                                    <br/>
                                    <img width="100px">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="overallCode"/>
                                            <xsl:text>.png</xsl:text>
                                        </xsl:attribute>
                                    </img>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="overallCode = 'cloudy'">
                                            <span style="color: blue">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'thunderstorm' or overallCode = 'rain'">
                                            <span style="color: orange">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'sunny' or overallCode = 'partlySunny'">
                                            <span style="color: red">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="color: grey">
                                                <xsl:text>Null</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                </xsl:if> 
                            </td>

                            <td>
                                <xsl:if test="dayOfWeek = 'Sat'">
                                    <xsl:value-of select="lowest"/>
                                    <xsl:text>° - </xsl:text>
                                    <xsl:value-of select="highest"/>
                                    <xsl:text>°</xsl:text>
                                    <br/>
                                    <img width="100px">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="overallCode"/>
                                            <xsl:text>.png</xsl:text>
                                        </xsl:attribute>
                                    </img>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="overallCode = 'cloudy'">
                                            <span style="color: blue">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'thunderstorm' or overallCode = 'rain'">
                                            <span style="color: orange">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'sunny' or overallCode = 'partlySunny'">
                                            <span style="color: red">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="color: grey">
                                                <xsl:text>Null</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                </xsl:if> 
                            </td>

                            <td>
                                <xsl:if test="dayOfWeek = 'Sun'">
                                    <xsl:value-of select="lowest"/>
                                    <xsl:text>° - </xsl:text>
                                    <xsl:value-of select="highest"/>
                                    <xsl:text>°</xsl:text>
                                    <br/>
                                    <img width="100px">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="overallCode"/>
                                            <xsl:text>.png</xsl:text>
                                        </xsl:attribute>
                                    </img>
                                    <br/>
                                    <xsl:choose>
                                        <xsl:when test="overallCode = 'cloudy'">
                                            <span style="color: blue">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'thunderstorm' or overallCode = 'rain'">
                                            <span style="color: orange">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:when test="overallCode = 'sunny' or overallCode = 'partlySunny'">
                                            <span style="color: red">
                                                <xsl:value-of select="overall"/>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span style="color: grey">
                                                <xsl:text>Null</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose> 
                                </xsl:if> 
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>