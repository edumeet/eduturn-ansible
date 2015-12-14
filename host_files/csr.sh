#!/bin/bash
read hostname
openssl req -new -newkey rsa:2048 -nodes -out $hostname.lab.vvc.niif.hu.csr -keyout $hostname.lab.vvc.niif.hu.key -subj "/C=HU/ST=Budapest/L=Budapest/O=NIIF Intézet/CN=$hostname.lab.vvc.niif.hu"
