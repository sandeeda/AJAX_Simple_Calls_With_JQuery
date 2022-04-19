<?xml version="1.0" ?>

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title> Question4 </title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
            <style>
            html {
              height: 100%;
            }
            
            body{
              background-image: linear-gradient(#B9D9EB, #89CFF0, #7CB9E8, #89CFF0,#B9D9EB);    }
            }
        </style>
         </head>
         <body>         
            <table id="dataTable" class="table table-striped">
                <tr>
                     <th>Country Name</th>
                     <th>Capital</th>
                     <th>Unemployment Rate</th>
                     <th>Total GDP</th>
                </tr>
               <xsl:for-each select="mondial/country">   
                  <tr>
                     <td><xsl:value-of select="name" /></td>
                     <td><xsl:value-of select="@capital" /></td>
                     <td><xsl:value-of select="unemployment" /></td>
                     <td><xsl:value-of select="gdp_total" /></td>
                  </tr>
               </xsl:for-each>
            </table> 
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>