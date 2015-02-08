#!/usr/bin/env python3

from urllib.request import FancyURLopener
import os

# read user and pw from environment
email = os.environ['GMAIL_USER'] # @gmail.com can be left out
password  = os.environ['GMAIL_PW'] 

url = 'https://%s:%s@mail.google.com/mail/feed/atom' % (email, password)

opener = FancyURLopener()
page = opener.open(url)

contents = page.read().decode('utf-8')

ifrom = contents.index('<fullcount>') + 11
ito   = contents.index('</fullcount>')

fullcount = contents[ifrom:ito]

if int(fullcount) > 0:
    print(fullcount + ' new mails')
else:
    print('no new mails')
