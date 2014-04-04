# Perform sed substitutions on `postgresql.conf`
s/#log_destination = 'stderr'/log_destination = 'stderr,syslog'/
s/#syslog_facility/syslog_facility/
s/#syslog_ident/syslog_ident/
