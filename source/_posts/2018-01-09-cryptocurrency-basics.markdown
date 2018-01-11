---
layout: post
title: "Cryptocurrency Basics"
date: 2018-01-09 19:35
comments: true
categories: crptocurrency monero bitcoin cryptocurrency-fundamentals
---
Assuming we start from a base knowledge of nothing when it comes to cryptocurrency, where do we begin. Why, at the beginning, of course.

<!--more-->

##What is cryptocurrency?

While I'll try to leave the excruciatingly painful details to the answer of this question to [Wikipedia](https://en.wikipedia.org/wiki/Cryptocurrency), I'll try to give the shortest version that I know of, and hopefully it will be easy to understand.

So, **cryptocurrency** is simply the blending of two ideas: cryptography and currency. Let's start with the currency part.

I think everyone has a pretty decent grasp on what currency is: a medium of exchange used to obtain goods or services. Nowadays currency is usually something that people don't want in and of itself, rather it's something they want so they can get the things they _really want_ later. When people think of currency (in the US) they usually think of these guys:

{% credited_image images/blog/us-bills.png Wikipedia | So I guess Ben Franklin is an honorary president according to the money...? %}

While I love small colored pieces of paper as much as the next guy, I only hold a special place in my heart for Federal Reserve Notes simply because I know I can trade them at a later time to get the things I really want. Like ice cream.

Currency can be pretty much anything as long as all the parties involved agree that what they are exchanging has some value. That value can be intrinsic (like gold or silver coins), or it can just be the value that people have placed in the currency knowing that sometime in the future the currency can be traded for something with intrinsic value. When all is said and done it doesn't really matter _what_ people use as a currency. People have used copper, silver, and gold for millenia, but other examples include seemingly worthless things like seashells or beads. The list of what people have used historically as currency is far too long for this post.

So now that we know currency is just something we exchange to get something else, how does something intangible (digital) work as a currency? Pretty well, apparently. Dark web sites rely heavily on cryptocurrencies to provide (illicit) goods and services to customers. [Craigslist](https://blockexplorer.com/news/craigslist-now-allows-specify-accept-cryptocurrency-payment/) started allowing users to specify whether they will accept cryptocurrency as payment in late 2017. Many businesses now accept Bitcoin as payment, including [Newegg, Expedia, Subway, and many, many more](https://99bitcoins.com/who-accepts-bitcoins-payment-companies-stores-take-bitcoins/). Enough people now consider cryptocurrency a viable means of exchanging goods and services, and so... now it is.

##Here comes the "crypto" part

Now that we see how cryptocurrencies fulfill the currency aspect, we get into the _slightly_ more technical aspect of how cryptography is used for cryptocurrencies. We'll come to learn that it's really all a matter of trust.

If I go to the store and buy a delicious carton of salted caramel ice cream, I need some way to pay for it. When I'm standing at the checkout ready to take home my heavenly brick of frozen goodness, I have various options at my disposal to pay. I can use cash, credit, debit, gift card, personal check, etc. All those methods of payment have varying levels of trust associated with them. Let's see what kind of trust, if any, is involved:

* **Cash**: If I hand the cashier a $20 bill there isn't really too much trust involved. Both the cashier and I trust that the Federal Reserve is backing the bill and that the $20 will still be worth the same $20 tomorrow. The cashier might use one of those anti-counterfeit markers to make sure the bill is legitimate, but beyond that both parties trust and agree that the $20 is an acceptable way to pay for my ice cream.</br></br>
* **Credit or debit card**: If I swipe my credit card to pay for my ice cream a different chain of trust occurs. The cashier no longer needs to trust that I have the money to pay, they instead look to the financial institution backing the card to tell them if I'm good for the purchase. There are some trust issues involved with verifying that I am using a card that I'm authorized to use (usually requiring my hand-written signature for later comparison should any disputes occur), but the issue of who to trust for the actual purchase no longer involves me. Once the cash register displays that "Credit/Debit Approved" message the cashier will hand me my purchase confidently knowing that payment is on the way.</br></br>
* **Gift card**: Let's say I have a gift card to this grocery store with $20 loaded onto it. If I try to use this as my payment method, again, the trust level is pretty low. The trust isn't even between me and the cashier anymore, it's now between the cashier and the store. The card acts more like a temporary store-backed debit card. I am able to use the card so long as the balance on the card exceeds the amount in items purchased. If I attempt to purchase something using a gift card with $0 balance the cashier will know right away upon scanning or swiping the card. Similarly, if the card balance is greater than my purchased items the cashier will see some sort of approval message and I will be handed my scrumptious purchases.</br></br>
* **Personal check**: You don't see this too often anymore, and it might just be attributable to the level of trust required to use a personal check. If I were to use a personal check to pay for my ice cream the cashier will now become a lot more interested in me. They'll need to see my drivers license. They need to watch me sign the check. They'll see if the check number is a low number (indicating a new checkbook). They make sure the date on the check is correct. They might only accept checks from local customers. Depending on the amount of the check they might even call my bank to verify funds. [The list continues](https://www.thebalance.com/avoid-taking-a-bad-check-315218). Considering that the store isn't even guaranteed to see the money, if it exists, for _**2 or more**_ days, businesses tend to view checks as risky. So to mitigate that risk the store now needs to have a much higher level of trust in the person issuing the check. Some businesses view checks as far too risky and [avoid taking them altogether](https://www.bankrate.com/finance/checking/protecting-your-small-business-from-bounced-checks.aspx).

It appears that different methods of currency require varying degrees of trust. So how does this apply to cryptocurrency?

Let's go back to the credit card example. The store trusts the credit card company when it says that I have the funds needed to purchase something. But _why_ does the store trust the credit card company? Usually it's because the two entities have some sort pre-arranged business relationship.

The credit card company promises to pay the store for all purchases made using their cards each month and charge the store a percentage of those sales for their service. The store promises to accept cards issued by the credit card company as payment in the expectation that they will see increased sales due to more people using their credit cards. The store gives the credit card company access to their own bank accounts in order to deposit monthly sales. This arrangement is laid out in contracts written by lawyers.

Quite a bit of planning and paperwork had to go into building this level of trust. But how do we achive something similar without all the pre-arranged hassle?

That is where cryptography comes in.

Cryptography in it's simplest form is a way to scramble the contents of a message so that only the sender and intended recipient(s) know the contents of the message. The basics of cryptography are beyond the scope of this post, but there are some good resources to be had [here](https://blockgeeks.com/guides/cryptocurrencies-cryptography) and [here](https://www.virtru.com/blog/encryption-basics).

{% credited_image images/blog/little-orphan-annie-decoder-ring.jpg Flickriver,The Retro-Spector | Little Orphan Annie duping children into drinking more Ovaltine, colorized, cir. 1940 %}



Instead of the store and credit card company, let's switch to using Boris and Juanita. Boris owns an online store specializing in the sale of the dankest fidget spinners around. Juanita is a fidget spinner aficionado of the highest caliber.




Boris requires funds before he sends spinners out
Juanita only has a caiman islands bank account
Juanita needs to send Boris information about her caiman islands account so that funds can be released
Both use insecure internet connections
They need to use cryptography to transmit the sensitive data so that only Boris receives the information, no matter who else intercepts the encrypted message
