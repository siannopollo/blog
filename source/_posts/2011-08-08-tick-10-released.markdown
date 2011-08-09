---
layout: post
title: "Tick 1.0 Released"
date: 2011-08-08 23:08
comments: true
sharing: true
categories: mac apps release tick
---

After much work and testing I've finally released [Tick](/apps/mac/tick), a timer and invoicing tool for freelance software developers. You can find it on the Mac App Store [here](http://itunes.apple.com/us/app/tick/id452557583?ls=1&mt=12).

<!--more-->

The idea for Tick started a few years ago as a web app. I built it primarily for myself in about 40 hours, and didn't need to market it to anyone, so it didn't have a name. I just called it my timer and chugged along, tracking my time in my web browser and sending PDF invoices when it was time to get paid for real work.

Then one day, it started getting slow. **_Dog slow_**. It got to the point where I'd have to hit the site and go get a snack or do something else until the Rails app booted up. It felt like owning a PC. Now, I knew what the cause was (running it on a server that didn't have the resources for it), but I let it slide for a while. But one day I finally got fed up and asked "How can I make this faster?". Here are the answers I came up with:

* Get a bigger server
* Upgrade Rails and use better web techniques
* Go native

I knew it wouldn't be worth it to get a bigger server, and frankly I was fed up with waiting for requests and responses in the browser. This left me with my last option: make a native app.

One of the hardest things of making a native Mac app is coming up with a design that doesn't make you want to puke when you look at it. iPhone apps constrain the developer/designer and force you to follow a certain amount of standards. Limited screen space forces you to leave certain things out of an app, or design features in such a way that they work well on a smaller screen. Constraints are usually a very good thing.

But with the Mac, there is no limit. You can go full screen or no screen. You can have multiple windows or just an icon in the menu bar. With great power comes great responsibility, so I can see how people go mildly insane and write an awful looking app for the Mac. To try to mitigate ending up with something completely awful I did a few things in my design:

1. **Limit the size of the app** <br> Instead of allowing Tick to be used full screen, I constrained it to be about 500px wide. By limiting the space the app could take up, I lessened the chance of wanting to fill that space with features I didn't need.
2. **Use a consistent format** <br> Tick is comprised of 6 main screens, using the bar at the top to toggle between them. By making the screens consistent from one to another, it doesn't feel jarring to switch between them and I know where the controls should be for certain actions.
3. **Make all text legible** <br> I can't tell you how annoying it is to try to read too-small text. Besides just bothering me, there is usually no way in a native Mac app to make the text larger.
4. **Keep the feature set small** <br> Keeping the window size of Tick small also helped to keep the feature set small. I know which features I use, but I don't know what anyone else might want. Instead of just guessing, I kept the features to a minimum viable product standard. I can always add more features later, but people usually get upset if you take away their pet feature, however small it may be.

These are just a few of my initial insights from working on Tick. All in all I'm very happy in how Tick 1.0 turned out. Hopefully others can use these tips when working on their own pet project. And if you really want some more insight into Tick, and have 6 bucks, go [check it out on the Mac App Store](http://itunes.apple.com/us/app/tick/id452557583?ls=1&mt=12).