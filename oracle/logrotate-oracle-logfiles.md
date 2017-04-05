# Usare Logrotate sui file di log di Oracle
Fonte: https://silviumc.wordpress.com/2013/06/05/log-rotation-for-oracle-11gr2-database/

<pre>
[oracle@dbsrv ~]$ echo -e "show base\nshow homes" | adrci

ADRCI: Release 12.1.0.2.0 - Production on Wed Apr 5 12:26:17 2017

Copyright (c) 1982, 2014, Oracle and/or its affiliates.  All rights reserved.

ADR base = "/u01/app/oracle"
adrci> ADR base is "/u01/app/oracle"
adrci> ADR Homes: 
diag/rdbms/mycdb/mycdb
diag/tnslsnr/dbsrv/listener
</pre>


## /etc/logrotate.d/oracle
<pre>
/u01/app/oracle/diag/tnslsnr/dbsrv/listener/trace/*.log /u01/app/oracle/diag/rdbms/mycdb/mycdb/trace/*.log {
    compress
    monthly
    dateext
    maxage 365
    rotate 99
    size=+16M
    notifempty
    missingok
    copytruncate
}

</pre>
