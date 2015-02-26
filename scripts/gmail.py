#!/usr/bin/env python3

from urllib.request import FancyURLopener
import os

email='xorg112@' 
password='qasw12-google'

url = 'https://%s:%s@mail.google.com/mail/feed/atom' % (email, password)

opener = FancyURLopener()
page = opener.open(url)

contents = page.read().decode('utf-8')

ifrom = contents.index('<fullcount>') + 11
ito   = contents.index('</fullcount>')

fullcount = contents[ifrom:ito]

if int(fullcount) == 1:
    print('one new mail')
elif:
else:
    print('no new mails')
