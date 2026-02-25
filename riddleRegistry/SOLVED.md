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
picoCTF{puzzl3d_m3tadata_f0und!_ee454950}
```

gives you picoCTF{puzzl3d_m3tadata_f0und!_ee454950}

