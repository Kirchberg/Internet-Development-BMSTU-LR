<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
        <table class="table table-hover">
            <tr>
              <th>Number of iterations</th>
              <th>First Value</th>
              <th>Second Value</th>
            </tr>
            <xsl:for-each select="objects/object">
            <tr>
              <td>
                <xsl:value-of select="iteration"></xsl:value-of>
              </td>
              <td>
                <xsl:value-of select="firstvalue"></xsl:value-of>
              </td>
              <td>
                <xsl:value-of select="secondvalue"></xsl:value-of>
              </td>
            </tr>
             </xsl:for-each>
        </table>
  </xsl:template>
</xsl:stylesheet>
