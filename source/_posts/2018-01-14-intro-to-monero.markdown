---
layout: post
title: "Intro to Monero"
date: 2018-01-14 21:22
comments: true
categories: cryptocurrency monero monero-fundamentals
---
Now that we have a little more clarity on _what_ a cryptocurrency is and how it can be used I'm going to dive into one particular cryptocurrency that I believe to be a good candidate to understand and get involved in: Monero

<!--more-->

[Monero](https://getmonero.org/get-started/what-is-monero/) (currency code XMR) is a cryptocurrency like Bitcoin or any of the multitude of others out there now. As such, it possesses features that are similar to existing cryptocurrencies, but implements those features in a way that sets it apart.

## Monero is private

This, in my mind, is the major feature that sets Monero apart from all the other cryptocurrencies. Without getting into implementation specifics (which I hope to do in a later post), Monero stores transactions in such a way that allows both the sender and recipient of a transaction to remain private from everyone else, meaning that no one is allowed to just browse the blockchain (the place that all transactions are stored) and see how much money Joe and Sally are exchanging between each other. The amount of each transaction is also hidden so that even if someone was able to correlate a transaction with a person there would be no way to determine if they exchanged 2 XMR or 2,000 XMR.

In contrast most other cryptocurrencies use a fully transparent blockchain. What this means is that we can trace the path of any particular unit of the currency from the creation of the currency to the present. In Bitcoin, for example, we can use the transparent blockchain to track the very first Bitcoin and see all the Bitcoin users it has belonged to, when it was traded, and find out who currently possesses it (or parts of it). While that's _interesting_, it's not private. And if you're OK with that then more power to you, but I for one value privacy (says the person writing blog posts on the internet) and see the importance Monero places on privacy as a great feature.

## Monero is fungible

Due to the inherant privacy of Monero there is no way to track down one specific unit and claim it was used in transaction X.

[That's not the case](http://time.com/3689359/bitcoins-track-anonymous) when it comes to Bitcoin (and others). The fully transparent nature of Bitcoin and other cryptocurrencies makes it so a motivated person could track down transactions from an illegal party to its current owner. While I don't _think_ this has happened yet, it's not far-fetched to imagine legal authorities deciding to confiscate cryptocurrency from an innocent user simply because they are in possession of cryptocurrency used in the commission of a crime (whether it be the [sale of drugs on the dark web](https://www.economist.com/news/international/21702176-drug-trade-moving-street-online-cryptomarkets-forced-compete) or [murder for hire](https://cointelegraph.com/news/bitcoin-ethical-hacking-leads-to-solving-fbi-murder-case)).

Since Monero doesn't suffer from the ability to track transactions, users of the currency can't be subject to consequences based on the participation of their current holdings in previous transactions. This means that all Monero are created (and continue to stay) equal. This fungibility ensures that XMR can never be rejected by 3rd parties, making all Monero acceptable to everyone who accept Monero as payment, whether it's restaurant reservations or artisanal popsicle stick figures sold on Etsy.

{% credited_image images/blog/popsicle-people.jpg Pinterest | Each one is painstakingly handcrafted using premium Brazilian mahogany and Tibetan yak hair, all materials being responsibly sourced. %}

## Monero can be mined

This appears to be a pretty common feature among cryptocurrencies. The very brief explanation of how this works is that for the cryptocurrency to function it needs to maintain a public record of all transactions (the blockchain) so that currency can't be double-spent. But, maintaining the blockchain isn't free. Verifying and adding new transactions to the blockchain requires computational work.

This work is what is deemed "mining". Users of the cryptocurrency will hook a computer up to the network and task their computer with the work of maintaining the blockchain. For their work these miners will receive a reward, paid out in the cryptocurreny itself, for verifying and adding a **block** of transactions to the blockchain.

---

This isn't an exclusive list of the major features of Monero, just a brief overview. Over the next several posts I'll be diving into the more technical aspects of _how_ Monero achieves all these great features so we can gain a better understanding of just what makes Monero tick.
