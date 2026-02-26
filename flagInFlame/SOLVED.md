the logs.txt is a base64 encoded png,

```bash
cat logs.txt | base64 -d | save logs_decoded.txt
```

gives you an image, if you open it there is text on the image, which is hex.

if we use xxd to convert the hex as plain text
```bash
> echo "7069636F4354467B666F72656E736963735F616E616C797369735F69735F616D617A696E675F32346431363839357D" | xxd  -r -p
**PICOCTF FLAG**
```


### personal rating
cool to use xxd but thats pretty much it, too simple for my liking 4/10

