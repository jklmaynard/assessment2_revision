PHONE BOOK, EPICODUS ASSESSMENT, WEEK 2

THE README.md FILE

PROJECT DESCRIPTION
This is a basic ruby web application for a phone book, where users can add contacts, and add phone numbers to individuals contacts. There is not yet functionality to delete contacts or numbers, and the styling is pretty basic.

The biggest bug is the inability to delete phone numbers once they are submitted.  If a user wants to submit new numbers, the old number stays on the screen.  There is also no indication of which number is home, work, or mobile, and I've yet to figure out how to make that an option when using an <a href="/numbers/<%= number.id() %>"><%= number.number() %></a> tag.  I've yet to figure out what the purpose of this anchor element is, but I believe it is crucial for the .id() method to be displayed. (Any extra comments about this element would be appreciated)

For flying solo for this project, I'm surprised at what I was able to accomplish.  This second week was not very successful, because we managed to go at the exercises without having to define too many classes, or spent so much of the class define creating classes and methods for those classes that we didn't have enough time implementing Sinatra.  It was good to see how far I could get in the time allotted.

#Notes for Myself

1. There needs to be more spec coverage for phone/contacts, however I'm going to update this into psql active record, so a lot of the spec coverage and methods will be removed.  This will be a dramatic change from the original assessment.

License to Reel

Copyright 2015, James Maynard
