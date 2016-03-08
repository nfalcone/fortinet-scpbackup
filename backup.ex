#!/usr/bin/expect

set HOST "MyFirewall"
set IP "192.168.1.1"
set PASS "your-password-here"
set USER backup

set timeout -1
spawn scp $USER@$IP:sys_config/backup /home/fortinet/[clock format [clock seconds] -format %Y.%m.%d]-$HOST.txt
expect {
        "$USER@$IP's password:" {
send "$PASS\n"
exp_continue
}
}


