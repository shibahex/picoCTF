this has fractions of the flags scattered across the logs, so you have to exract all the text

```bash
cat server.log | grep FLAGPART | awk '!seen[$5]++ {printf "%s", $5}'
```

### personal rating
very cool that I got to learn how awk works, very easy challenge just getting the FLAG but if you challenge yourself to get the complete flag in one command its very good! 8/10
