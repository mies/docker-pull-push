#!/usr/bin/expect

spawn sudo docker push mies/rethinkdb
expect {
    "Username:" {
        send "$env(USERNAME)\r"
        expect {
    "Password:" {
        send "$env(PASSWORD)\r"
        expect {
    "Email:" {
        send "$env(EMAIL)\r"
    }   
    }
    }
}
}
}
interact
