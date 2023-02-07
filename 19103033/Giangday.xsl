<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="style.css" type="text/css"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <div>
                    <h2>Giaovien</h2>
                    <table class="giandv-table">
                        <thead>
                            <tr>
                                <th>Môn Học</th>
                                <th>Số Tin Chỉ</th>
                                <th>Tên Giao Viên </th>
                                <th>ngày bắt đầu</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="datagvmh">
                                <tr>
                                    <td>
                                        <xsl:value-of select="monhoc/Monhoc/TenMh" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="monhoc/Monhoc/sotinchi" />
                                    </td>
                                    
                                    <td>
                                        <xsl:value-of select="giaovien/Giaovien/TenGv" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="giangday/Giangday/ngaybatdau" />
                                    </td>

                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>