---
title: GIT SSL Certificate Problem
date: 2016-11-27 23:54:00 Z
tags:
- news
layout: post
---

Hello, the last friday when I was trying to push my changes in a project to the repo,
for my surprise, the command `git push my-repo my-branch` failed!!

The error message was: <b><i>fatal: unable to access 'https://gitlab.com/my-user/myrepo.git/': SSL certificate problem: unable to get local issuer certificate</i></b>, WTF!!

Well, after research in google and stackoverflow, I found the answer to my problem in the 4th answer of [this post](http://stackoverflow.com/questions/3777075/ssl-certificate-rejected-trying-to-access-github-over-https-behind-firewall).

I follow this steps:

    #Make a new folder in my home directory to not overwrite the filesystem certs
    1) mkdir ~/.certs/
    #Change to new directory
    2) cd ~/.certs/
    #Download the bundle of Mozilla's root certificates
    3) wget https://curl.haxx.se/ca/cacert.pem
    #Change the path where git searches certs
    4) sudo git config —system http.sslCAPath ~/.certs/
    #Set the new cert file
    5) sudo git config —system http.sslCAinfo ~/.certs/cacert.pem

I hope that post will be of your complete satisfaction.
