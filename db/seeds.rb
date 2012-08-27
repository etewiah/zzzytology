# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Liff.create(
    word: "Aasleagh",
    definition: "A liqueur made only for drinking at the end of a revoltingly long bottle party when all the drinkable drink has been drunk"
    )
=begin

PageContent.create(
    title:  "Zzzytology - because there are not enough words in the dictionary",
    content: "<p>  This is essentially an experiment I couldn't resist.  I woke up at 4:03 am on a Sunday morning struggling to explain a concept I couldn't find a word for.  Obviously my brain was on a trip but somehow it channeled me to a keyboard and I found myself writing code for an application that would help people define words for concepts that currently cannot be described in a word.
    </p><p>
    True story!!!
    </p>",
    tab_name: "home"

	)
PageContent.create(
    title:  "Collaborate with me!!",
    content: "<p>I need some decent hackers to work on this with...
    </p><p>
    True story!!!
    </p>",
    tab_name: "collaborate"

	)

=end
