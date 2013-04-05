class Stoppers
	attr_reader :lines

	def initialize
		@lines = []
		self.load_lines
	end

	def next_line
		if @lines.blank?
			self.load_lines
		end

		@lines.pop
	end

	def load_lines
		@lines.push "Dandruff tastes way better than it looks"
		@lines.push "Drinking your own urine is common in some countries"
		@lines.push "I can't be bothered to shower every day"
		@lines.push "I masturbate to the Teletubbies"
		@lines.push "I may have just shit my pants"
		@lines.push "I personally don't see anything wrong with beastiality"
		@lines.push "I spit when I talk because of mouth herpes."
		@lines.push "I'm either gay, or you're the most unattractive woman I've ever seen."
		@lines.push "I'm not saying I will beat my wife, I'm just saying I'd like to."
		@lines.push "If I was a cop, I'd fuck up some white kids."
		@lines.push "if someone just says 'k' or 'okay'. I mean come on, elaborate people!"
		@lines.push "My uncle Hal molested me, once."
		@lines.push "So as of this morning I decided 'To hell with the doctors' and quit my antidepressants."
		@lines.push "Do you know how hard it is to clean lube off a cat's asshole?"
		@lines.push "Sometimes I just dont wipe my ass. I mean, animals don't have toilet paper either, amirite?"
		@lines.push "That's not what Jesus teaches"
		@lines.push "This erection is headed straight for your fuckbucket"
		@lines.push "When you think about it, Hitler wasn't such a bad guy.  I mean.. it's not like he was black."
		@lines.push "Yeah I saw that porno too."
		@lines.push "You look like you're going to be sexy when you're 80"
		@lines.push "You might want to get tested... your daughter too... and the dog."
		@lines.push "I don't blame my molester, I was a cute 6 yr old."
		@lines.push "Mommy said the same thing during our bath last night!"
		@lines.push "So, my dog had her period all over the couch last night."
		@lines.push "I just went to the bathroom and it looks like my dick ate cheezy poofs."
		@lines.push "I made my work drug free, by taking all the drugs in people's desks."
		@lines.push "My last fart sounded like an old man's death rattle."
		@lines.push "I'm celebrating the 1 year anniversary of my last shower."
		@lines.push "I keep one long toenail for doing coke."
		@lines.push "Basically there's nothing that comes out of me that doesn't resemble Cream of Mushroom soup."
		@lines.push "My urine is like the amber from Jurassic Park, but with more bugs."
		@lines.push "I have to fart like a stripper on smoke break."
		@lines.push "I've pretty much given up bathing now that I found dryer sheets."
		@lines.push "Tequila tastes like step dad kisses."
		@lines.push "Learning hypnotism really boosted my sex life."
		@lines.push "I'm basically the King Midas of yeast infections."
		@lines.push "Whew! The Thai food I had earlier really makes my butt weepy."
		@lines.push "Let's Harlem Shake naked!"
		@lines.push "Mind if I floss?"
		@lines.push "Sounds like we've got a douche bag contest going on over here!"
		@lines.push "I've got the funniest tattoo on my taint."
		@lines.push "Baby teeth are a joke, they can't even open beers."
		@lines.push "Woops! That fart came with a mud pie."
		@lines.push "Am I the only one who thinks creamated sounds dirty?"
		@lines.push "Ever masturbate while jumping up and down?"
		@lines.push "Do you taste like you smell?"
		@lines.push "Let's all get out of these wet clothes eh?"
		@lines.push "Nice legs, what time do they open?"
		@lines.push "I've got a knife and a penis, either way one of them will be inside of you."
		@lines.push "Love ain't nothin' but sex misspelled."
		@lines.push "On a scale of 1-10, I would totally pee in your butt."
		@lines.push "Not to be too bold, but you have a spectacular queef saddle."
		@lines.push "I found a testicle on the side and I'm not sure what to do with it."
		@lines.push "You want hot sex, you kinky with a jalapeno!"
		@lines.push "Foreplay can sometimes involve an inkjet printer"
		@lines.push "I'd drag my balls through a field of thistle thorns just to hear you fart through a walkie-talkie"
		@lines.push "My zipper is like getting a blowjob from a tiny shark"
		@lines.push "Wow, that was a snatchwaxer with a score to settle!"
		@lines.push "Sex with a bear seems fun, but it usually turns out to be instantly regretable."
		@lines.push "My nipples are dead inside."
		@lines.push "The secret to a fun orgy is butthole suction."
		@lines.shuffle!
	end


end
