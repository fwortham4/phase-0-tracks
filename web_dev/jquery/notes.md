# H1 9.3 - JQuery
# H2 by Forrest Wortham

1. What is JQuery and how does it relate to JavaScript?

..*

..* [JQuery - W3School](http://www.w3schools.com/jquery/jquery_ref_selectors.asp)

2. How to you get jquery to work?

..* [JQuery - W3School - Getting Started](http://www.w3schools.com/jquery/jquery_get_started.asp)

..* [JQuery.com - Download](http://jquery.com/download/)
..* link jquery to your HTML by using <script> tag in the HTML header section

3. Working with JQuery

..* $(this).hide() - hides the current element.

..* $("p").hide() - hides all <p> elements.

..* $(".test").hide() - hides all elements with class="test".

..* $("#test").hide() - hides the element with id="test".

**Selectors** - determine which HTML code will be acted upon.
     Types:

    - Element Selector  - Ex. $("p").hide() - hides all <p> elements.
    - #id Selector  - Ex. $("#test").hide() - hides the element with id="test".
    - “.class” Selector  - Ex. $(".test").hide() - hides all elements with class="test".
    - All Selector  - Ex. $(“*”).hide() - hides all the element.
    - etc. (Reference Guide for Selectors)

If lots of jQuery are being used, then you can save them in a JavaScript file. (using the <script src> attribute to connect them back to the HTML file).

**Event Methods** (also referred to as “fires” or “fired")- the exact moment an action is taken by the user on your webpage. (Reference Guide for Events and Reference Guide for Effects).
- ***Must pass a JS function to an Event***

     Ex. $(“<Selector>”).<Event>(function(){
          -OR- $(“<Selector>”).<Method>(“Event", function(){
          <function code goes here>
          });

Document Object Model (**DOM**) - the standard for accesses HTML and XML docs.


