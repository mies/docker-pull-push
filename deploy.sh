#!/usr/bin/expect
sudo docker push mies/rethinkdb
expect "Username:"
send "$USERNAME\r"
expect "Password:"
send "$PASSWORD\r"

