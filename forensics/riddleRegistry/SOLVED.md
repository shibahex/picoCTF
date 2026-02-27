all you get is a pdf, and the flag is the author.

```bash
> head confidential.pdf -n 13
%PDF-1.7
%���
�1 0 obj
<<
/Type /Pages
/Count 1
/Kids [ 4 0 R ]
>>
endobj
2 0 obj
<<
/Producer (PyPDF2)
/Author (cGljb0NURntwdXp6bDNkX20zdGFkYXRhX2YwdW5kIV9lZTQ1NDk1MH0\075)
```

then 
```bash
> echo "cGljb0NURntwdXp6bDNkX20zdGFkYXRhX2YwdW5kIV9lZTQ1NDk1MH0" | base64 -d
**PICOCTF FLAG**
```


## personal rating
was too easy for me but its creative, I like how the .pdf file tries to throw you off. 5/10

