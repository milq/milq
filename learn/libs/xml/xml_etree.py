import urllib.request
import xml.etree.ElementTree as ET

#########################
## ElementTree XML API ##
#########################

# Reference: http://docs.python.org/3/library/xml.etree.elementtree.html


# CONVERT A WELL-FORMED XML FILE INTO AN OBJECT

# Obtain an XML file from internet
response = urllib.request.urlopen('https://raw.githubusercontent.com/milq/milq/master/learn/xml/students.xml')
data = response.read()      
with open('students.xml', 'wb') as f:  
    f.write(data)

tree = ET.parse('students.xml')
root = tree.getroot()

for child in root:
    print(child.tag, child.attrib)