<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- l'élément output -->
    <xsl:output 
        method="html"
        encoding="UTF-8"
        doctype-public="-//W3C//DTD HTML 4.01//EN"
        doctype-system="http://www.w3.org/TR/html4/strict.dtd"
        indent="yes" ></xsl:output>

    <!-- reste du document XSLT -->

    <xsl:template match="/">
        <html>
            <head>
                <title>Projet de XML</title>
                <link rel="stylesheet" href="bootstrap.css"  type="text/css"></link>
            </head>
            <body>
                <div class="container mt-5">
                    <div class="text-center mt-5">
                        <h1 class="lead-1 font-weight-bold">TP De XML kabulu Mbolela Jeanluc  </h1>
                    </div>
                    
                    <div class="divider my-5"></div>
                    <!-- Partie Livre -->
                    <div class="row mt-5">
                        <div class="col-12">
                            <xsl:for-each select="Bibliographie/livre">
                                <h3 class="mt-3 mb-3">
                                    Le Livre "<xsl:value-of select="titre"></xsl:value-of>"
                                </h3>
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">Nom Livre</th>
                                            <th scope="col">Auteur(s)</th>
                                            <th scope="col">Tome(s)</th>
                                            <th scope="col">Info(s) Edition</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="font-weight-bold"><xsl:value-of select="titre"></xsl:value-of></td>
                                            <td>
                                                <xsl:for-each select="auteur">
                                                    <p>
                                                        <xsl:value-of select=".">
                                                        </xsl:value-of>
                                                    </p>
                                                </xsl:for-each>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </xsl:for-each>
                        </div>
                    </div>

                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>