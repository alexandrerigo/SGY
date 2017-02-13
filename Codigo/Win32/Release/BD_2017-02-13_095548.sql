C:\Users\Ruan\Documents\Embarcadero\Studio\Projects\AcademiaNorte\Codigo\Win32\Release\\mysqlImport.exe  Ver 3.7 Distrib 5.6.26, for Win64 (x86_64)
Copyright (c) 2000, 2015, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Loads tables from text files in various formats.  The base name of the
text file must be the name of the table that should be used.
If one uses sockets to connect to the MySQL server, the server will open and
read the text file directly. In other cases the client will open the text
file. The SQL command 'LOAD DATA INFILE' is used to import the rows.

Usage: C:\Users\Ruan\Documents\Embarcadero\Studio\Projects\AcademiaNorte\Codigo\Win32\Release\\mysqlImport.exe [OPTIONS] database textfile...
Default options are read from the following files in the given order:
C:\Windows\my.ini C:\Windows\my.cnf C:\my.ini C:\my.cnf C:\Users\Ruan\Documents\Embarcadero\Studio\Projects\AcademiaNorte\Codigo\Win32\my.ini C:\Users\Ruan\Documents\Embarcadero\Studio\Projects\AcademiaNorte\Codigo\Win32\my.cnf 
The following groups are read: mysqlimport client
The following options may be given as the first argument:
--print-defaults        Print the program argument list and exit.
--no-defaults           Don't read default options from any option file,
                        except for login file.
--defaults-file=#       Only read default options from the given file #.
--defaults-extra-file=# Read this file after the global files are read.
--defaults-group-suffix=#
                        Also read groups with concat(group, suffix)
--login-path=#          Read this path from the login file.
  --bind-address=name IP address to bind to.
  --character-sets-dir=name 
                      Directory for character set files.
  --default-character-set=name 
                      Set the default character set.
  -c, --columns=name  Use only these columns to import the data to. Give the
                      column names in a comma separated list. This is same as
                      giving columns to LOAD DATA INFILE.
  -C, --compress      Use compression in server/client protocol.
  -#, --debug[=name]  Output debug log. Often this is 'd:t:o,filename'.
  --debug-check       Check memory and open file usage at exit.
  --debug-info        Print some debug info at exit.
  --default-auth=name Default authentication client-side plugin to use.
  -d, --delete        First delete all rows from table.
  --fields-terminated-by=name 
                      Fields in the input file are terminated by the given
                      string.
  --fields-enclosed-by=name 
                      Fields in the import file are enclosed by the given
                      character.
  --fields-optionally-enclosed-by=name 
                      Fields in the input file are optionally enclosed by the
                      given character.
  --fields-escaped-by=name 
                      Fields in the input file are escaped by the given
                      character.
  -f, --force         Continue even if we get an SQL error.
  -?, --help          Displays this help and exits.
  -h, --host=name     Connect to host.
  -i, --ignore        If duplicate unique key was found, keep old row.
  --ignore-lines=#    Ignore first n lines of data infile.
  --lines-terminated-by=name 
                      Lines in the input file are terminated by the given
                      string.
  -L, --local         Read all files through the client.
  -l, --lock-tables   Lock all tables for write (this disables threads).
  --low-priority      Use LOW_PRIORITY when updating the table.
  -p, --password[=name] 
                      Password to use when connecting to server. If password is
                      not given it's asked from the tty.
  -W, --pipe          Use named pipes to connect to server.
  --plugin-dir=name   Directory for client-side plugins.
  -P, --port=#        Port number to use for connection or 0 for default to, in
                      order of preference, my.cnf, $MYSQL_TCP_PORT,
                      /etc/services, built-in default (3306).
  --protocol=name     The protocol to use for connection (tcp, socket, pipe,
                      memory).
  -r, --replace       If duplicate unique key was found, replace old row.
  --secure-auth       Refuse client connecting to server if it uses old
                      (pre-4.1.1) protocol.
                      (Defaults to on; use --skip-secure-auth to disable.)
  --shared-memory-base-name=name 
                      Base name of shared memory.
  -s, --silent        Be more silent.
  -S, --socket=name   The socket file to use for connection.
  --ssl               Enable SSL for connection (automatically enabled with
                      other flags).
  --ssl-ca=name       CA file in PEM format (check OpenSSL docs, implies
                      --ssl).
  --ssl-capath=name   CA directory (check OpenSSL docs, implies --ssl).
  --ssl-cert=name     X509 cert in PEM format (implies --ssl).
  --ssl-cipher=name   SSL cipher to use (implies --ssl).
  --ssl-key=name      X509 key in PEM format (implies --ssl).
  --ssl-crl=name      Certificate revocation list (implies --ssl).
  --ssl-crlpath=name  Certificate revocation list path (implies --ssl).
  --ssl-verify-server-cert 
                      Verify server's "Common Name" in its cert against
                      hostname used when connecting. This option is disabled by
                      default.
  --use-threads=#     Load files in parallel. The argument is the number of
                      threads to use for loading data.
  -u, --user=name     User for login if not current user.
  -v, --verbose       Print info about the various stages.
  -V, --version       Output version information and exit.

Variables (--variable-name=value)
and boolean options {FALSE|TRUE}  Value (after reading options)
--------------------------------- ----------------------------------------
bind-address                      (No default value)
character-sets-dir                (No default value)
default-character-set             auto
columns                           (No default value)
compress                          FALSE
debug-check                       FALSE
debug-info                        FALSE
default-auth                      (No default value)
delete                            FALSE
fields-terminated-by              (No default value)
fields-enclosed-by                (No default value)
fields-optionally-enclosed-by     (No default value)
fields-escaped-by                 (No default value)
force                             FALSE
host                              192.168.1.200
ignore                            FALSE
ignore-lines                      0
lines-terminated-by               (No default value)
local                             FALSE
lock-tables                       FALSE
low-priority                      FALSE
plugin-dir                        (No default value)
port                              0
replace                           FALSE
secure-auth                       TRUE
shared-memory-base-name           (No default value)
silent                            FALSE
socket                            (No default value)
ssl                               FALSE
ssl-ca                            (No default value)
ssl-capath                        (No default value)
ssl-cert                          (No default value)
ssl-cipher                        (No default value)
ssl-key                           (No default value)
ssl-crl                           (No default value)
ssl-crlpath                       (No default value)
ssl-verify-server-cert            FALSE
use-threads                       0
user                              ruan
verbose                           FALSE
