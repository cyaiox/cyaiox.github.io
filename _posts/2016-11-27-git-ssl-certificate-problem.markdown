---
layout: post
title: "GIT SSL Certificate Problem"
date: 2016-11-27 19:54:00 -0400
tag: news
---

Hello, the last friday when I was trying to push my changes in a project to the repo,
for my surprise, the command `git push myrepo development` failed!!\n
The error message was: "fatal: unable to access 'https://gitlab.com/my-user/myrepo.git/': SSL certificate problem: unable to get local issuer certificate", WTF!!\n
Well, after research in google and stackoverflow, I found the answer to my problem in the 4th answer of [this post] (http://stackoverflow.com/questions/3777075/ssl-certificate-rejected-trying-to-access-github-over-https-behind-firewall)
\n
I follow this steps:\n
1) mkdir ~/.certs/ # Make a new folder in my home directory to not overwrite the filesystem certs\n
2) cd ~/.certs/\n
3) wget https://curl.haxx.se/ca/cacert.pem # Download the bundle of Mozilla's root certificates\n
4) sudo git config —system http.sslCAPath ~/.certs/ # Change the path where git searches certs\n
5) sudo git config —system http.sslCAinfo ~/.certs/cacert.pem # Set the new cert file\n
\n
I hope that site will be of your complete satisfaction.
