---
layout: post
title: "Mac App Submission"
date: 2011-07-30 11:20
sharing: true
comments: true
categories: mac apps
---

I recently found myself needing to submit my new application [Tick](/apps/mac/tick) to the Mac App Store. I figured "No problem! I've already gone through the iPhone app submission process, I'm sure this will be eerily similar." Well, yes and no.

<!--more-->

So the things that stayed the same were these:

1. Create an app ID for my particular project.
2. Create a certificate signing request with Keychain.app
3. Use the certificate signing request to generate certificates that will be installed back into Keychain.app.
4. Create a provisioning profile to install into Xcode that does the code signing.

I completed [all these steps](https://developer.apple.com/devcenter/mac/checklist/#prepare) without any major problems and then proceeded to Archive my app. The archive was built, code was signed, all was right with the world. Or so it seemed.

I then tried to validate my archive before submitting it to Apple and the validation failed. Reason:

{% blockquote %}
The product archive package's signature is invalid. Ensure that it is signed with your "3rd Party Developer Installer" certificate.
{% endblockquote %}

I was stumped. I did everything the docs said, installed all certificates and profiles properly, but to no avail. I even contacts Apple and explained my problem. They were less than helpful and suggested I use one of my Technical Support Incidents, which "are available for purchase in either a 2-Pack for $99 USD or 5-Pack for $249 USD". Ugh.

I gave up on Apple being any assistance and uninstalled all my certificates and profiles, uninstalled Xcode, reinstalled Xcode and went through the whole process again making sure to follow all directions to the letter. In doing so I found a cryptic sentence on the main page of the Developer Certificate Utility:

{% blockquote %}
If you do not have the WWDR intermediate certificate installed, click here to download now.
{% endblockquote %}

Well, I never installed that. I didn't see any warnings stating that this was required. There was no explanation anywhere as to what the WWDR intermediate certificate even did. So, desperate, I installed the [WWDR intermediate certificate](http://developer.apple.com/certificationauthority/AppleWWDRCA.cer "Download the WWDR intermediate certificate") on blind faith that it would solve my problems. And to my surprise, it did. I installed the certificate, restarted Xcode, archived my project and **success**!

Hope this is helpful to anyone experiencing similarly maddening problems getting their app submitted to the Mac App Store.