cat server.log | grep FLAGPART | awk '!seen[$5]++ {printf "%s", $5}'
