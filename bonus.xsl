<?xml version="1.0" ?>

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title> Bonus Question </title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
            <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <script>
         
            $(document).ready(function(){
                $("#dataTable").hide();
                $("input").click(function(){
                    location.reload();
                })
                $("button").click(function(){
                    var countryName = document.getElementById("country-name").value;
                    $("#dataTable").find("td:contains('"+countryName+"')").closest('tr').css("visibility","visible");
                    $("#dataTable").show();
                })
                
            })


   
          </script>
          <style>
                .display-none{
                    visibility: collapse;
                }
          </style>
         </head>
         <body>   
             
            <div class="input-group mb-3">
        
                <input
                  type="text"
                  class="form-control"
                  id="country-name"
                  placeholder="Country name"
                  aria-label="Recipient's username"
                  aria-describedby="basic-addon2"
                />
                <div class="input-group-append">
                  <button class="btn btn-primary" type="button">
                    Get provincial details
                  </button>
                </div>
              </div>
            <table id="dataTable" class="table table-dark">
                <tr>
                     <th>Country Name</th>
                     <th>Province Name</th>
                     <th>Local Name</th>
                     <th>Population in 2011</th>
                     <th>Number of cities</th>
                </tr>
          


               <xsl:for-each select="mondial/country"> 
                    <xsl:for-each select="province">
                        <tr class = "display-none">
                            <td><xsl:value-of select="parent::country/name" /></td>
                        
                            <td><xsl:value-of select="name" /></td>
                            <td><xsl:value-of select="localname" /></td>
                            <td><xsl:value-of select="population[@year=2011]" /></td>
                            <td><xsl:value-of select="count(city)" /></td>
                         </tr>
                    
                    </xsl:for-each>
               </xsl:for-each>
            </table> 
            
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>