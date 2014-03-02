# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

superman = Chart.create! name: "Superman", author_name: "Clark Kent", published_at: 1.weeks.ago, content: "Superman is a fictional comic book superhero appearing in publications by DC Comics, widely considered to be an American cultural icon. Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932 while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc. (later DC Comics) in 1938, the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials, television programs, films, newspaper strips, and video games. (from Wikipedia)"
krypton = Chart.create! name: "Krypton", author_name: "Clark Kent", published_at: 4.weeks.ago, content: "Krypton is a fictional planet in the DC Comics universe, and the native world of the super-heroes Superman and, in some tellings, Supergirl and Krypto the Superdog. Krypton has been portrayed consistently as having been destroyed just after Superman's flight from the planet, with exact details of its destruction varying by time period, writers and franchise. Kryptonians were the dominant people of Krypton. (from Wikipedia)"
batman = Chart.create! name: "Batman & Robin", author_name: "Bruce Wayne", published_at: 2.weeks.ago, content: "Batman is a fictional character created by the artist Bob Kane and writer Bill Finger. A comic book superhero, Batman first appeared in Detective Comics #27 (May 1939), and since then has appeared primarily in publications by DC Comics. Originally referred to as The Bat-Man and still referred to at times as The Batman, he is additionally known as The Caped Crusader, The Dark Knight, and the World's Greatest Detective, among other titles. (from Wikipedia)"

Chart.create! name: "Wonder Woman", author_name: "Diana of Themyscira", published_at: 6.weeks.ago, content: "Wonder Woman is a DC Comics superheroine created by William Moulton Marston. She first appeared in All Star Comics #8 (December 1941). The Wonder Woman title has been published by DC Comics almost continuously except for a brief hiatus in 1986. (from Wikipedia)"
Chart.create! name: "Flash", author_name: "Bart Allen", published_at: 5.weeks.ago, content: "The Flash is a name shared by several fictional comic book superheroes from the DC Comics universe. Created by writer Gardner Fox and artist Harry Lampert, the original Flash first appeared in Flash Comics #1 (January 1940). (from Wikipedia)"
Chart.create! name: "Splinter", author_name: "Hamato Yoshi", published_at: 3.weeks.ago, content: "Master Splinter, or simply Splinter, is a fictional character from the Teenage Mutant Ninja Turtles comics and all related media. (from Wikipedia)"

