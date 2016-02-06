*How can you use Chrome's DevTools inspector to help you format or position elements?*
It's a much faster way to try things. Rather than make a change to the HTML or CSS file, then save, then open in the browser, we can open up devtools and tinker and get instant feedback (yay!) about the changes we make. It's much faster and easier, much less frustrating than toggling back and forth. It also lets us play around with other people's sites to see what we can do, without worrying about "breaking" them.

*How can you resize elements on the DOM using CSS?*
Within an element (div, spen, or some other wrapper) we add CSS to change the element, either with brute force: height = 100px, or with a bit more flexibility: height = 10%
for example:
div {
  height: 15px;
}

*What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?*
Absolute was easy, although it "breaks" easily when the browser window size changes. Relative was pretty easy to use. Static, too. I'm not sure we used fixed. my understanding is that fixed keeps the element in a certain place on the page even if you scroll around. We didn't have much need for that this time.

*What are the differences between margin, border, and padding?*
The margin creates a protected area around the content and the border. It is transparent.
The border goes around the padding, and inside the margin, and it can be set to a color and style (i.e. black dashed line)
The padding goes between the border and the content, it is transparent.
The Box Model (we saw this earlier, maybe last week, I forget) displays this nicely.

*What was your impression of this challenge overall? (love, hate, and why?)*
An interesting exercise in using the DevTools to modify CSS in order to manage how the site looks. I liked it because it was fairly concrete. If you had asked me to "design a site," that's stressful for me, for now, but telling me to put the boxes in a particular place was manageable, even kinda fun.
