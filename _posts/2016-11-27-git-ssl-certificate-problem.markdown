---
layout: post
title: "GIT SSL Certificate Problem"
date: 2016-11-20 21:29:00 -0400
tag: news
---

Hello, the last friday when I was trying to push my changes in a project to the repo,
for my surprise, the command `git push myrepo development` failed!!
The error message was: "fatal: unable to access 'https://gitlab.com/my-user/myrepo.git/': SSL certificate problem: unable to get local issuer certificate", WTF!!
Well, after research in google and stackoverflow, I found the answer to my problem in the 4th answer: http://stackoverflow.com/questions/3777075/ssl-certificate-rejected-trying-to-access-github-over-https-behind-firewall

I follow this steps:
1) mkdir ~/.certs/ # Make a new folder in my home directory to not overwrite the filesystem certs
2) cd ~/.certs/
3) wget https://curl.haxx.se/ca/cacert.pem # Download the bundle of Mozilla's root certificates
4) sudo git config —system http.sslCAPath ~/.certs/ # Change the path where git searches certs
5) sudo git config —system http.sslCAinfo ~/.certs/cacert.pem # Set the new cert file

I hope that site will be of your complete satisfaction.
