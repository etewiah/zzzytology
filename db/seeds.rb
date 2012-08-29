# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
Liff.create(
    word: "Aasleagh",
    definition: "A liqueur made only for drinking at the end of a revoltingly long bottle party when all the drinkable drink has been drunk"
    )
    Liff.create(
    word: "Youzabomb",
    definition: "Something of a last resort. Handles whatever other stuff can't handle. Example: Imagine different people giving directions. The last one in the line is youzabomb."
    )
=end

PageContent.create(
    title:  "Zzzytology - because there are not enough words in the dictionary",
    content: "<p>  This is essentially an experiment I couldn't resist.  I woke up at 4:03 am on a Sunday morning struggling to explain a concept I couldn't find a word for.  Obviously my brain was on a trip but somehow it channeled me to a keyboard and I found myself writing code for an application that would help people define words for concepts that currently cannot be described in a word.
    </p><p>
    True story!!!
    </p><p>
    This site was only created on Sunday the 26th of August so I haven't really had time to create much functionality.  All you can do now is create a word - nothing more.  Create a word anyway and come back in a few days and I should have something more decent ;)
    </p>",
    tab_name: "home"

	)
PageContent.create(
    title:  "Collaborate with me!!",
    content: "<p>I need some decent hackers to work with me on this project.  Its a pretty simple concept
    but I'd like to execute it well.  Right now this is a very very Minimal Viable Product.  The source code is on github so please feel free to fork it
    and make any changes you fancy - banner link to github at top right of page.
    </p><p>
    I am expecting most of the first hundred people who visit this site to be friends.  If you want to help me, please interact as much as you can on this site.  Like it on facebook, create a word, follow the links etc.
    One interesting thing for me is to see how I progress in google searches.  Right now zzzytology only returns 2 links.  Please google it now to see if that has increased.  I will post images from my google analytics accout
    to show how the hit rate is progressing.
    I will implement commenting functionality soon but in the mean time please leave any comments you might have here:       
    <a href='http://geekinberlin.posterous.com/157420929'>Ed Tewiah on posterous</a>
    </p>",
    tab_name: "collaborate"

	)


