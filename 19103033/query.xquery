    <filter>
    {
        for $s in doc("Giangday.xml")/datagvmh
        let $h := doc("Giangday.xml")/datagvmh/giangday/Giangday[ngaybatdau='2022-09-22']
        for $k in $h
        return
        <query>
        {
            $s/monhoc/Monhoc/TenMh,
            $s/monhoc/Monhoc/sotinchi,
            $s/giaovien/Giaovien/TenGv,
            $s/giangday/Giangday/ngaybatdau
        }
        </query>
    }
    </filter>