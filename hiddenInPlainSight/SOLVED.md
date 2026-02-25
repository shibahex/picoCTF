```bash
> head img.jpg
���JFIF��c3RlZ2hpZGU6Y0VGNmVuZHZjbVE9��C
```

```bash
> echo c3RlZ2hpZGU6Y0VGNmVuZHZjbVE9 | base64 -d
steghide:cEF6endvcmQ=
```

this gives the ouput `steghide:cEF6endvcmQ=`
saying steghide, as in a stenography program then, a base64 encoded string.

```bash
> echo "cEF6endvcmQ=" | base64 -d
pAzzword
```

output is pAzzword 

using stenhide we can extract the hidden data using the password

```bash
 > steghide extract -sf img.jpg -p pAzzword -xf final
 wrote extracted data to "final".
 > cat final
 picoCTF{h1dd3n_1n_1m4g3_656e4d79}
``` 


