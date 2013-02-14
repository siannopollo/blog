---
layout: post
title: "Print and Paginate NSTableViews"
date: 2012-11-03 10:49
comments: true
sharing: true
categories: mac osx cocoa tick nstableview
---

I've been getting [Tick](/apps/mac/tick) ready for a new release, and one bug someone pointed out was that the invoice PDFs were generated as one long PDF. This works out fine until you need to _print it_. Below is the code I used to fix that.

<!--more-->

So like most things in Objective-C, if you want to add some interesting functionality to a class, you need to subclass it and use that class for your implementation (since categories don't allow you to add instance variables). Fine Cocoa, whatever. Anyway, here is the complete code to turn your dumb NSTableView into a printing and paginating machine!

<script src="https://gist.github.com/4007554.js"> </script>

The reason this warrants a blog post is that I couldn't find a single spot that contained all this information. At first I thought that the NSTableView might just need some magic property set (like setAllowsMagicalPagination:YES), but alas, that doesn't exist. Then I thought the NSCells might be able to fix themselves, but they aren't in charge of drawing themselves (not being NSView subclasses), so that was out. Eventually I was able to squeeze enough vital information out of the internet that allowed me to split up the tables rows during printing, and that resulted in the above code.

So consider this my civic duty for the day. Enjoy!