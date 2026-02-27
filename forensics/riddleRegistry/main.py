from PyPDF2 import PdfReader

reader = PdfReader("confidential.pdf")
number_of_pages = len(reader.pages)
page = reader.pages[0]
text = page.extract_text()
print(page.extract_text((0, 0)))
