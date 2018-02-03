---
layout: post
title: "Privacy in Monero"
date: 2018-02-02 15:52
comments: true
categories: crptocurrency monero monero-fundamentals privacy
---
Privacy is a big concern for people in a lot of different areas, and Monero is sympathetic to that. In this post I'll work through the major privacy-oriented features in Monero and why they're important.

<!--more-->

When dealing with cryptocurrencies, a purely digital product, some people believe that just because they can't see the person their transferring money to that it means their identity is hidden. The reality is that is far from the truth. Just because there is no name tied to a crypto-wallet address it doesn't mean there is no way to suss out that information by various means. [This article](http://reason.com/blog/2018/01/30/if-you-bought-drugs-on-the-silk-road-usi) details how a non-trivial amount of people may be getting a knock on their door from the FBI in the near future because of their Bitcoin transactions used on the now-defunkt Silk Road. I'm sure those people believed that there was no way to trace back their online purchases to their real-life persons, but that just isn't so. So if you value your privacy, even when you have "nothing to hide", keep reading to learn how Monero protects your privacy when using it.

With any transaction, including digital transactions, you have a sender, a recipient, and metadata about the transaction. An example of this would be:

**Alice (in Florida) sent Bob (in Oklahoma) $5 on Oct 10, 2017 at 3pm EST**

Let's dive in to see how Monero goes about making sure all of that information stays private and secure.

## Stealth Addresses

Stealth addresses in Monero, also known as one-time keys, are a way for the recipient of a transaction to remain hidden from all outside observers but still allow the recipient to know that they are the true recipient of the transaction. For a slightly more advanced explanation [check out this entry](https://getmonero.org/resources/moneropedia/stealthaddress.html) in the Moneropedia. For the techincal explanation you can check out this [CryptoNote Standards document](https://cryptonote.org/cns/cns006.txt) to get a lower level understanding.

{% credited_image images/blog/stealth.gif The Simpsons %}

When the transaction is initiated Alice will use Bob's Monero wallet address to send him money. Under the covers, though, Monero does some trickery to hide who Alice is sending her money to. Monero will use Bob's address and some random data to derive a new address, and this new address becomes the destination for the money. Since the new address was created using information from Bob's wallet address this means that Bob can look at that transaction and determine if he is the intended recipient or not. As new transactions are posted to the blockchain Bob's Monero software will check each one and if it can verify the recipient of the transaction using Bob's private key then it will mark Bob as the recipient and give him the money.

An easy way to think about this is that the sender is generating a one-time nickname for the recipient, a nickname which the recipient knows is directed to them. If Alice and Bob knew each other when they were kids Alice might have an affectionate nickname for Bob, something like "Tiny Bertha". When Bob sees this he chuckles to himself, shakes his fist at Alice, and knows that he is the recipient of the transaction. This means that our transaction now looks like this:

**Alice (in Florida) sent "Tiny Bertha" (in Oklahoma) $5 on Oct 10, 2017 at 3pm EST**

Even though we now have the recipient hidden we still know an awful lot about our transaction: who the sender is, where both the sender and recipient live, and how much money is being exchanged. Next we'll look at how Monero handles obscuring the sender.

## Ring Signatures

Ring signatures are the Monero solution for obfuscating the sender of a transaction. Ring signatures provide a way for the sender of a transaction to lump themselves into an ad hoc group (or ring) of Monero users and sign the transaction as a group. While the sender and recipient will know the identity of the sender, the ring signature will prevent outside observers from pinpointing the specific sender, thereby keeping the true identity impossible to discern.

{% credited_image images/blog/ring.jpg The Ring | Using Monero would be a lot creepier if this crawled out of your screen each time you spent some XMR. %}

When Alice clicks "Send" on her transaction to Bob there is some more trickery that happens before the transaction is posted. The Monero software will take Alice's private key, her public key, and the public keys of _n_ number of people who have previously posted transactions on the blockchain and cryptographically sign the new transaction. The resulting signature ensures that all public keys used in the making of the signature are equally valid in verifying the signature. All keys being equally valid means that all keys used in the signature are as probable as being the true sender compared to any of the others. Just because someone is listed in the group as the sender of a transaction there is no feasible way to point to one of them and claim _that one_ as the true sender. Since all of them are the senders, then none of them are.

For the exact technical details of these concepts you can learn more about them [on the Moneropedia](https://getmonero.org/resources/moneropedia/ringsignatures.html) and the [CryptoNote Standards document](https://cryptonote.org/cns/cns002.txt) related to ring signatures.

Monero also uses Ring CT which is a way of using ring signatures to hide the amount on a particular transaction. This concept is a litle harder for me to grok and explain, so I'll just link to some useful information on it [here](https://getmonero.org/resources/moneropedia/ringCT.html) and [here](https://eprint.iacr.org/2015/1098.pdf) and leave it as an exercise for the reader.

If we go back to our example we can apply a ring signature-ish scheme to hide the sender and the amount and change it thus:

**Alice or Jim or Betty or Carl or Alex (in Florida) sent "Tiny Bertha" (in Oklahoma) some amount of money on Oct 10, 2017 at 3pm EST**

Now we have the sender, the recipient, and the amount of the transaction either hidden or obscured. I can barely even tell what's happening! But, there is still some identifying information in our transaction: the location. It seems to be the last piece of useful identifying information, so let's see how Monero goes about hiding that.

## Kovri and I2P

When you visited this site you gave me some information, namely your IP address. Check it out:

<strong style="color:red">
  <script type="application/javascript">function getIP(json) {document.write(json.ip + ' - ' + json.city + ', ' + json.region_name + ' ' + json.country_code);}</script>
  <script type="application/javascript" src="https://freegeoip.net/json?format=jsonp&callback=getIP"></script>
</strong>

You don't remember giving me that information, but I have it nonetheless. Oh the things I'm going to do to it...*

Ok, enough creepy stuff. But what _can_ someone do with your IP address? They can determine roughly where you are, as you saw above (if the script is working correctly). More so, that IP address can be traced back to your Internet Service Provider (ISP). Your ISP is then able to tell whomever they choose which of their customers was using that IP address at any given time. Generally they don't just hand that stuff over willy nilly, although [they're totally not above selling it](https://www.usatoday.com/story/tech/news/2017/04/04/isps-can-now-collect-and-sell-your-data-what-know-internet-privacy/100015356/).

Mainly it's your ISP that knows everything you're doing online, but there are other times when someone else knows what you're doing. If you ever use public WiFi your traffic can be easily monitored (a really good reason [not to do any banking](https://www.yahoo.com/news/blogs/upgrade-your-life/banking-online-not-hacked-182159934.html) while grabbing your morning latté at Starbucks). If you have unsecured WiFi at home anyone close enough can [monitor all traffic on the network](https://www.cnet.com/news/the-unvarnished-truth-about-unsecured-wi-fi/). If your computer is hacked then the hacker is going to know more than just your network traffic. Barring getting hacked, what can be done to hide or at least obscure your internet traffic so that you can maintain your privacy, especially while using something financially sensitive like Monero?

There are Virtual Private Networks (VPN) whereby you connect to the private network and you send and receive data through the private network. All of your outgoing/incoming traffic goes to/from the VPN, so if someone were to monitor your network traffic they would only be able to see that you were communicating with a single destination: the VPN. While some people believe this to be secure, you're really just trading your ISP for the VPN, in which case you still haven't gained any privacy.

The [Tor service](https://www.torproject.org) is a big step up from a VPN in that instead of sending your traffic to a single place your internet traffic is distributed over many nodes in the network. When you attempt to visit a webpage that request is sent to a node on the network, which then forwards the request to another, and another, and so on. Eventually one of the nodes will execute the request and hand the result back through the chain of nodes until it gets back to you. That chain of nodes changes periodically to allow for better privacy.

While Tor is a good solution to internet traffic privacy (using the Tor Browser), to use it elsewhere requires you to set it up and specifically send traffic through the network. If we apply this to using Monero, users would have to boot up Tor and make sure all Monero-related traffic uses the Tor network. Most people either aren't that technically savvy or would find it a hassle to boot up Tor just so they can use Monero.

This is where [Kovri](https://github.com/monero-project/kovri/) comes in. Kovri is the Monero implementation of a privacy and security-centered peer-to-peer network. Kovri uses the [I2P](https://geti2p.net) spec, which is similar to Tor in function but differs in some technical details of how the network is structured. Kovri will be integrated directly into the Monero software, which will provide a high level of privacy and security while using Monero.

Unfortunately, as of the time of writing this post, Kovri is still in development and is not built-in to the Monero software. But, based on the [commit log](https://github.com/monero-project/kovri/commits/master) the devs look like they are hammering away at it and should have something for everyone soon.

Back to our example, if we use Tor (or Kovri when it's built-in to Monero) during our transaction it becomes:

**Alice or Jim or Betty or Carl or Alex (in Northern Albonia) sent "Tiny Bertha" (in Irkutsk) some amount of money on Oct 10, 2017 at 3pm EST**

While there is still information available about where the transaction happened, the locations are now completely wrong. Our transaction now looks radically different from how it started, and that's a good thing.

The privacy of each party to the transaction is protected from prying eyes, and everyone is still able to send and receive the money they intended to in the first place. Privacy is becoming increasinly important in a world where everything is going or has gone digital, and it's really good to see that Monero treats privacy as a first-class object.

_*Don't worry, I don't really have your IP address. That info was gathered using a free service to detect your IP address, and is only being displayed on this page. You might as well give up on me popping by any time soon._
