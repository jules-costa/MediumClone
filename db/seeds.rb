# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TOPICS

# goodbye = Topic.create(title: "goodbye")
# hello = Topic.create(title: "hello")
# yes = Topic.create(title: "yes")
# no = Topic.create(title: "no")

# USERS

demoUser = User.create(username: "Guest", password: "password", biography: "Thank you for checking out Ouija! This Medium clone was built in 10 days using Ruby on Rails, React, Redux, Javascript and HTML/CSS.", image_url: "assets/demo_user.png")
user2 = User.create(username: "Thomas Oppong", password: "password", biography: "Founder @Alltopstartups. Curator at postanly.com. Columnist at Inc. Featured at HuffPost, Entrepreneur, Thought Catalog, Quartz, CNBC, Observer, and The Muse.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495152511/habits_author_gekdrd.jpg")
user3 = User.create(username: "Josh Elman", password: "password", biography: "Product Guy. I have worked on Twitter, Facebook Connect, Zazzle, LinkedIn, RealPlayer. Partner at Greylock, looking for crazy new things.", image_url: "
http://res.cloudinary.com/jules-costa/image/upload/c_thumb,g_face,w_130/v1495152511/fomo_author_d2ddvu.jpg")
user4 = User.create(username: "Rachel W Cole", password: "password", biography: "Wisdom for women living well-fed lives.", image_url: "
http://res.cloudinary.com/jules-costa/image/upload/c_thumb,g_face,w_100/v1495152510/dieting_author_bvkx2d.jpg")
user5 = User.create(username: "Carrie Melissa Jones", password: "password", biography: "Founding Partner/COO of CMX. Passionate advocate for women and girls. Obsessive dog parent. In love with Seattle, WA.", image_url: "
http://res.cloudinary.com/jules-costa/image/upload/g_face/v1495152509/abuse_author_ai28et.jpg")
user6 = User.create(username: "Benjamin Foley", password: "password", biography: "Writer. Thinker. Strategist.", image_url: "
http://res.cloudinary.com/jules-costa/image/upload/c_thumb,g_face,w_100/v1495152509/anxiety_author_lywwsn.jpg")
user7 = User.create(username: "Marika Bianca", password: "password", biography: "vixen with a pen.", image_url: "
http://res.cloudinary.com/jules-costa/image/upload/c_thumb,g_face,w_99/v1495152511/loneliness_author_dt5vg5.jpg")
user8 = User.create(username: "Winnie Lim", password: "password", biography: "I seek and tell stories", image_url: "
http://res.cloudinary.com/jules-costa/image/upload/g_face/v1495152509/depression_author_lkpeib.jpg")

# STORIES

goodbye1 = Story.create(title: "Bad Habits You Need to Kill Immediately to be a Much Better Person This Year", body: "Habits define us. And nothing sabotages your creativity and productive life quite like bad habits. In the words of Samuel Johnson “The chains of habit are too weak to be felt until they are too strong to be broken.” To live a balanced, productivity, creative and fulfilling life, ridding yourself of your unproductive habits is an important investment. It’s easier to keep going than to take a few minutes to reflect, plan, and to really look at what needs to change for you to create your own version of a productive week, month or year. It’s about time you paid attention to the habits that could be hindering your progress in life and career.

I’m too tired. I don’t have the time. I am not capable. Someone else will do it. It’s too late now. Now is not the right time. I am not talented. I am not ready. I’m too scared. Nobody will help me. What if I fail. I don’t feel motivated. I’d rather do nothing. I don’t have the money..yet! It’s easy to come up with excuses and justify not getting started. The longer you fill your head with rationalizations and empty excuses, the less time you have to take action. It’s easy to say, “I will start when I have more experience, money, time and resources”. By this time next year, you will have a lot more excuses. It’s a cycle. And once you get caught in the loop, it, can be difficult to break free and do something meaningful you care about. Many people are living their entire lives without ever standing up and stepping out. But it’s exciting to witness the rare few who dare themselves and step out of their personal bubbles to make a change. Most of use live with the stubborn illusion that we will always have tomorrow to do today’s work. We consistently hold on to this belief and keep procrastinating until work becomes a heavy burden. Left unchecked, we always default toward a more comfortable path. Your comfortable zone provides a state of mental security. You can understand why it’s so hard to kick your brain out of your comfort zone.

If you can be reached via smartphone, email, Twitter, Facebook or LinkedIn, you’re way too available and all these outlets are possible connections that can distract you from your purpose. Disconnect and watch as your productivity sores. Your smartphone might be the biggest productivity killer of all time. Most people just can’t put the phone away. If your phone is connected online, the temptation to stay updated about almost everything is very high. If you can, put down that phone (or power it off) for a while when in the office and witness the effect that can have on your level of productivity.

Multitasking keeps your mind full, busy, and always under pressure. Science has proven that only 2 percent of us can really multitask efficiently. So just give it up already. Stop multi-tasking, seriously stop. Of all the bad habits, multitasking is among the worst and most common. Multi-tasking does not necessarily make you more productive as you may think. You can actually achieve more in less time when you single task and focus on getting one thing done well. It takes about 23 minutes and 15 seconds to fully return to a task after interruption, according to Gloria Mark, Professor at UC Irvine, in Fast Company. So you may be wasting a lot more time than you think.

Time is the raw material of productivity and creativity. We are not taught to say “no.” We are taught not to say “no.” “No” is normally considered “rude”. But “yes” makes limits creative and productivuty time. ”Saying “no” means you have time to focus on your own creation, tasks and projects, rather than respondong and reacting to requests. “You can’t let other people set your agenda in life” says Warren Buffett.

You are not good enough! You can’t do it! Don’t even bother trying! It’s too late for you! Nobody will share it, like it, recommend it or even see it! Don’t waste your time! You have no writing credentials. You’re terrible at grammar, punctuation, and using parentheses. No one wants to read your opinions — everyone has their own opinions to sort through. Psychological research shows that success and wellbeing are associated with high self-esteem, and that people with lower self-esteem suffer a disproportionate share of emotional and behavioural problems.

The truth is…


Nobody is perfect enough to begin anything! You will never be ready for anything..ever! I love to write and share. I’m not a professional writer. I have no writing credentials. I am not Stephen King. I have no technique, and I am not trained. But I write anyway. It matters that I show up everyday. I can only get better with practice. My inner critic has gotten weaker with time.

The more you desperately want to be like someone else, the more unworthy you feel. The more you desperately want to be happier, the lonelier you become, despite the awseome people surrounding you. Mental toughness, happiness and living life to the fullest come from knowing what to care about–and most importantly, what not to care about.", author_id: 2, image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495152510/habits_m0wvcj.jpg", read_time: "10 min read", topic_id: 1, size: 2)



goodbye2 = Story.create(title: "NO FOMO", body: "I’ve been thinking about my resolutions around attention and what is the attraction to distraction. For me a lot of it comes down to the fear of missing out on other great things happening, or FOMO. There are so many wonderful things happening in my life, but I sometimes get more caught up in what is going on instead, instead of always making the most of the moment I’m in.

I struggle with sometimes not picking up the iPhone when it beeps and buzzes. Or when there is a moment of downtime, picking up the phone and scroll through my Twinstabookchat feeds over and over looking at what is happening elsewhere and wondering if I should be doing that instead. Eg “Oh look at them skiing” “whoa that beach looks incredible”.

There is always a piece of important news, a friend sharing a moment, an interesting app just launching, a fun party going on. We’ve built these amazing products where you can just tap on glass and look in on what everyone else is doing, talking about, and sharing at nearly any time. But if I’m looking in on others, I might miss the most important things in front of me. With FOMO, It gets too easy to think about the next moment or feeling sad about not being at a great party or dinner event. Instead of just being happy for where I am, and also happy for others having great times.

I also struggle with FOMO constantly in my job as an investor. A big part of investing is in getting involved in uniquely great deals before it’s common wisdom. In order to do this, I try to meet as many people doing great things as possible in hopes I won’t miss out on the one that is just the right fit for me. But FOMO often leads to the wrong outcomes. When I feel FOMO, I worry I might jump into a hot or trendy deal, in a hot space but don’t totally feel the company or product or opportunity is right. I haven’t done this yet, but I feel the forces constantly. I’m going to focus even harder this year on finding the great founders, big visions, magical products, and huge opportunities that I can’t wait to join up with. Not just ones I’d be fearful of missing out on, but journeys I can’t imagine not being on.

FOMO is a powerful emotion. I think it’s a key driver that social networks have tapped to encourage people to sign up. If you aren’t on the right network, you will miss out on what your friends are saying, sharing, enjoying and talking about. In some ways this is powerful and good — we are much more connected as a society and overall humanity than ever before. But if we become trapped in this FOMO and stop enjoying the moments that matter, then FOMO turns bad.

So this year I’m resolved to focus on NO FOMO. I wish everyone a healthy, happy, and impactful 2015. May you make the most of the moments you are in, and have NO FOMO for the ones you are not in.", author_id: 3, image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495153650/fomo_kx6upi.jpg", read_time: "3 min", topic_id: 1, size: 0)




goodbye3 = Story.create(title: "Dieting is a Violent Act", body: "I believe dieting is a violent act.

I don’t feel neutral, or calm, or indifferent about dieting. I feel quite clearly that dieting is a violent act that (predominantly) women are encouraged to perform against themselves. I find diets to be physically violent, often leading to exhaustive cycles of weight loss and gain and sometimes insufficient calories (i.e. energy) and nutrition. I find diets to be psychologically violent, often leading to mental obsession, increased stressed, shame, disempowerment, disembodiment, and a general sense of failure when the diet inevitably results not in weight loss, but weight gain.

I find diets spiritually violent, often severing the most sacred of ties between ourselves and the wisdom of our body. I can think of few things as holy as the act of feeding ourselves and this is exactly where diets wreak their havoc. I have come to believe this about diets after my own stint on Weight Watchers (which fueled the start of my anorexia) at age 20 and a range of other diets in the years to follow. I have come to believe this about diets after a decade of thoroughly researching and formally studying the science and ineffectiveness of diets. Most of all though I have come to believe this after spending years on the frontline of healing women who arrive at my doorstep deeply wounded from years, often decades, spent dieting.

Dieting isn’t all that different than other forms of temporary soothing. Like eating, drinking, or shopping in order to numb out, for the person doing it, at first, it feels relaxing. It’s a bandaid solution that almost always leaves us feeling worse off. Violence means destruction and that is what I know diets do. They destroy our natural ease with food. They destroy, albeit temporarily, our ability to listen to and honor our unique physical cues about what to eat, when to eat, and how much to eat. They destroy adult women’s sense that they are capable of feeding themselves without external controls.

The majority of people in the western world, including most of our medical establishment, believe that diets are an obvious and even healthy response to overconsumption of food and possessing a body size above what is deemed acceptable. It’s just not true though. In fact it’s bullshit. Diets don’t improve our health and they don’t result in weight loss (never mind that there is nothing inherently unhealthy or wrong with weighing more or having a larger body).

It’s understandable that a woman would go on a diet, given the amount of money spent each year across various industries to sell her on the idea that she can’t be trusted around food and that she isn’t desirable unless she is thinner. I understand this. I bought into it too long ago. Yet given what I know, I believe firmly that diets are a violent act.

A word, or two, on the experience of holding a radical point of view: it’s scary. For women, historically, our very survival has depended on being likable. To feel disliked, judged, and rejected, to women…to me…can induce panic. It is for this reason many women default to silence when their voice, however necessary, might run against the status quo. So I share this most radical of beliefs knowing that you might not only disagree, but that you might criticize, unfollow, and reject me as a valued voice in your life. I know that my beliefs about dieting are radical. I also know that a lot of normal ideas were at one time radical. I also know that it’s the truthful but less popular ideas that need champions.

As long as it takes I will tell my story, stand for the truth, and call for peace — the peace that diets rob us of. I’m happy to put in the time, however long, until we see a cultural sea change happen. If you share my view on dieting but feel alone this is me reaching my hand out to join yours. We may be a minority but from what I can tell that is quickly changing and a new paradigm is emerging. That said while there is a growing awakening happening, there remains a lot of work to do. Case in point: Oprah Winfrey and her recent investment into and spokeswomanship for Weight Watchers…

*deep sigh*

Have you heard the term “The Oprah Effect”?

This phrase was coined to describe the success that resulted for a person, product (especially books), or business from a single appearance on her television show. And even without her television show, it’s a common belief that Oprah remains the single most powerful woman in the world. And her success is deserving. Oprah, without question, has improved the lives of millions of people. As a woman, a fellow human, I have a tremendous amount of compassion for her long struggle with food and body loathing. But as a public figure, I believe her endorsement of Weight Watchers, while being a prudent business move (netting her $45 million on paper), is unethical. Simply put she has invested in and endorsed a product proven to fail in the long run.

If Oprah had come out endorsing the Volkswagon cars with faulty emissions readers we’d be up in arms. We’d be cross-eyed and confused. “Why would anyone endorse a product that doesn’t deliver on its promises?!” we’d say. “Why would anyone support a company that lies to it’s consumers?!” we’d exclaim.

When I learned that Oprah was coming out with a rousing endorsement of Weight Watchers I felt outraged, but more than that I felt and still feel utterly heartbroken by the incredible missed opportunity that Oprah represents. I’m pained by the incredible number of women who will, I believe, thanks to Oprah, feel a green light to diet. If you feel drawn to dieting because you feel out of control with food and unhappy with your body please know there is another way. A more effective way. It’s entirely possible to make peace with food and your flesh without the “help” of rigid rules.

Dieting might be the only way you’ve ever known to relate to food and your body, but it’s a violent way and peace is available, this much I know.", author_id: 4, image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495152510/dieting_fn5y62.jpg", read_time: "5 min read", topic_id: 1, size: 1)




goodbye4 = Story.create(title: "The Bruises We Carry, The Bruises We Lay Down", body: "I’m about to share a story that four million other women in America could tell you this year alone, and that millions of men could tell you too. This is the story of how I have reclaimed my identity after an abusive relationship.

Almost a year ago, I packed up everything that would fit into my car, and I drove away from San Francisco. I wasn’t moving to a new city; I was running away. I moved to expose my bruises. I left so that I could to learn to be me again. This is not about recounting all my dark memories or revealing all the ways that violence against women is a global epidemic. That issue is indisputable. It is a fact that 35% of the world’s women have faced a situation like mine.

Instead, I hold a story in my hands about what happens after those dark days, after you grope for the light switch above your head and finally flip it on. I have two choices: Write the story and shed light on what I’ve hid in the dark for so long. Or hold the story inside, feigning composure, all the while knowing it will continue to break my spirit. There are two choices, but really no choice at all. I must begin.

What It Really Looked Like

We met in the spring, and we began our innocent courtship over Twitter. After a few weeks and a dozen tweets, we agreed to meet over coffee to talk about work. I called it “networking” at the time. We sipped our fresh brewed coffees in the sunshine and then sauntered together toward Dolores Park. We stopped by Bi Rite to get a bottle of wine and a sandwich to share. “I’m a feeder,” he had said while he insisted that he pay for everything. On our second date, he wore a suit jacket and his mother called. He almost started crying when he told me how much she meant to him. I was sure I had stumbled onto something I should work hard to keep. A few months later, we began to date in earnest.

While I liked his seeming sensitivity, it was his ambition that magnetized me. We would talk about our work, our dreams, our hopes, our visions for the future. We’d stay up all night, scheming about projects. He had a habit of staring at me with wide eyes, catching me off guard, and complimenting me until I blushed. I had never felt so seen in my whole life, so matched. He was peeling away all the armor I’d covered myself in over all the years. No, let’s correct that. He was tearing off my armor, exposing me. This is what it really looked like. It looked like being seen. It began with him stating that he wanted me to be with him every single weekend, with him ordering black Uber cars to my apartment to pick me up because he said he must be near me.

Abuse does not usually come in the form of anything dark or dangerous. It comes dressed as everything we’ve ever dreamed of.

He waited until I felt loved and safe. He waited a few weeks, a few months. Then he tore it away meticulously, one piece at a time. He took away the Uber cars. He stopped going to his job. He stopped giving compliments. He turned everything into darkness and lies, forbid me from seeing friends, told me that I’d never be enough for him. My reality unravelled like the frayed ends of rope pulled taut. I kept pulling it harder, hoping to stop it, but it just kept undoing itself. And a few months later, there I was. Undone. How did I become a vessel for all his pain and anger? How did my body become his battleground, filled with bruises? This kind of thing doesn’t happen to me, I thought. I must be going crazy.

Many days in the dark depths of the relationship, I never left the bedroom in his apartment. My thoughts grew fuzzy, my stomach pulled itself inside out, a dull headache pounded at my temples. I cried almost every single day. I cried at work a few times. I cried when I couldn’t sleep at night. I cried while I tried to cover marks on my face with concealer. I cried after our fights, believing I was to blame. I cried when I learned the depths I would swim in if I had to, the days when I saw my own undoing and thought I could do nothing but watch. I chopped off my hair and dyed it dark. I lost 15 pounds on my petite frame. My face became gaunt, but I was rarely hungry enough to eat meals.

Why did I stay so long? Why didn’t I tell anyone? I’ve asked myself these questions countless times, and here I am again. I could offer a handful of explanations that never seem to fit quite right: Leaving meant leaving a broken man, who then would be alone forever. Leaving meant that the reality he had painted for me would crumble and I’d have to rebuild the one he’d cut away from me. Leaving meant admitting that I was in an abusive relationship in the first place, which I denied for months. Leaving meant giving up on “love”, or what I believed love to be.

I know I don’t have the answers, even now. I just have the handful of attempts and the knowledge that some things stay messy forever, no matter how hard we try to clean them. About a year into the relationship, I saw a crack of light in the darkness. Weeks went by, and it grew larger and larger. I wrestled with the decision, but I ultimately knew my time had run out. I was standing on an empty stage. I could not pretend anymore. I gathered my things into garbage bags for about the third or fourth time. I moved what I could into a storage unit I had rented after he once threatened to burn all my belongings. I had tried to leave many times before, but this time, I finally did it.

My god was it bright outside in the world without him. My god was it frightening. My eyes burned for days. Colors burst forth in electric, garish blues on the taquería signs of the Mission District. I had to avert my eyes from the greens and pinks and yellows of the illuminated shop windows. It was like losing a limb. I kept looking behind me, thinking I might see his figure. I kept wondering if there was some way I could repair it — if only. I couldn’t sit still. I couldn’t sit with the absence. I moved from place to place so he wouldn’t find me if he were looking. I spoke to lawyers about restraining orders and started gathering evidence. I had to keep moving, I thought. I had to run further to claim myself again, to live a life without a shadow of trauma, or to claim that shadow so I could make peace with it. I thought running might erase the pain, just for a little while, just for a moment, just for a breath.
The Story of 4 Million Women

My story of abuse is part of a much larger narrative that a third of the world’s women live every day. It is part of a narrative about gender, power, the price of freedom. Abuse is about power. Most commonly, this is a gendered power, undermining the self-worth of the victim. That should come as no surprise unless you’re just satisfied enough that you don’t need to question the way you think about gender and power. I’m a white woman, and I spent the bulk of my childhood in the Bay Area. I know there are pains and hardships I will never understand. I haven’t always had the courage to know that, and I certainly didn’t have this courage when I met him.

Until I met him, our culture gave me a few inches, enough success to keep me from becoming angry or disillusioned. I was happy with that for a long time. My privilege made me ignorant, especially of other women-identifying people’s struggles. But my eyes are open now, and I can never shut them tight again.

Lay your bruises down next to mine, and let’s love and hope and live again. Or, perhaps, you can take my hand and we can learn together how to love, hope, and live for the very first time.", author_id: 5, image_url: "
http://res.cloudinary.com/jules-costa/image/upload/v1495152509/abuse_k7sdcx.jpg", read_time: "8 min read", topic_id: 1, size: 1)



goodbye5 = Story.create(title: "Things I Had to Give Up to Heal My Anxiety", body: "To achieve something great, it is more important to focus on what you need to take away rather than what you need to add. Although there is a certain fetishization with productivity in modern society, I believe adding habits is a form of procrastination. If you are anything like I used to be, you tend to overcommit. Similar to a dog walking through a pet store, I was always chasing every new scent that crossed the precipice of my nose, never going deep on a single goal, in fear of what I may be missing out on if I did.

Even though anxiety was clearly causing 80% of my negative outcomes in life, I kept telling myself that if I just achieved an external goal, my anxiety would be healed as a derivative.If you have ever tried this method, then you know how it turned out for me. I got everything I went after. A job at a startup. A promotion. A business on the side. Lost 15 lbs. The list of achievements went on and on as my anxiety sat on the back burner, waiting to be miraculously healed through association.

I distinctly remember the day when I finally had enough of this shotgun approach. I was getting ready to head on a trip out of the country on a little journey, and I was feeling anxious about it. My anxiety level was a 6/10, which a year prior I would have been ecstatic about, but a level that was still detracting too much energy and happiness from my life.

During a run the week before the trip, the frustration finally built up to the point where I couldn’t continue running. I remember stopping and being completely frustrated. I had come so far in my healing, but it was still taking away from my life. I had come to my tipping point. I was done with my half-assed attempts to heal myself.

Anxiety had always been an adjacent goal. One that never took center stage. When I hit the tipping point on that run, I realized that if I was ever going to achieve any external success, I had to first achieve internal healing. From that moment forward, I became a military strategist, planning my moves according to a constant focus on a single goal, victory. For me, victory was healing my anxiety. And after a couple of months, I won. You can achieve almost anything in life if you militantly prioritize. You can’t be an author, businessman, marathoner, adventurist, and politician all this year, but you may be able to be all of those things in a decade or two.

Realize that the real opportunity cost is not committing. When you haphazardly go after things in life, and I am as guilty as the next guy, you fail to achieve anything of great stature. As Confucius said, “He who chases two rabbits, catches none,” What follows are the things that I had to give up to heal. Some I have reintroduced into my life because they add value, but I have left most out. You can see tremendous results by adjusting the knobs in your life.", author_id: 6, image_url: "
http://res.cloudinary.com/jules-costa/image/upload/v1495152509/anxiety_ngds3w.jpg", read_time: "6 min read", topic_id: 1, size: 1)



goodbye6 = Story.create(title: "loneliness", body: "loneliness comes
in waves of
softly subtle,
wistful thoughts
until you’re buried
under a mountain
of feathers,
suffocating", author_id: 7, image_url: "
http://res.cloudinary.com/jules-costa/image/upload/v1495152511/loneliness_byk0lj.jpg", read_time: "2 min read", topic_id: 1, size: 0)



goodbye7 = Story.create(title: "Recovering from chronic depression", body: "I had hesitated writing this, because it is the best and worst thing to have another chronically depressed person tell another that it is possible to get better. I sought tons of solace in depression memoirs, and one that particularly struck me chronicled Lincoln’s melancholy. It didn’t speak of any recovery. Instead, it focused on how Lincoln accepted his perpetual melancholy and channeled it positively for his life’s work.

It can be depressing to read survivor memoirs, because if someone can get better, why couldn’t I? Yet it was ironically inspiring at the same time. Maybe I could get better if other people did get better.

I did get better. A whole ton better. But I recognize that I had a lucky break in my life where I was in a privileged situation to move.

But in my opinion, privilege is not something to be wasted. If you’re given a silver spoon, you can reject that spoon and go live a life of remote simplicity, disowning all materialism in the world. Or, you can take that spoon and think of how to use it effectively to make this world better.

My recovery didn’t occur overnight but rather it took over the course of the past three years. I still have to be extremely careful with myself. There have been times when I let it slip, and the signs appeared again — trouble falling asleep, general apathy, the inability to observe beauty, exhaustion, irritability — the trick is to recognize these signs and kickstart the healing process again. Sometimes it takes making major decisions. Sometimes all it takes is a ton of time alone, away from the world.

But the biggest discovery for me throughout the entire process is — the discovery of who I really am and aspire to become, once I started functioning coherently.

That makes me keep thinking about the complex role society and environment plays in our mental health. How much of it is actually actionable and removable with long-term sustainable solutions. I think of the person I used to be, with impaired cognitive ability and poor decision making. I think of people out there who are still suffering, and I see my old self staring back at me.

I think of all the work I’ve accomplished for the past three years, and all the potential we’re missing out from the world, because we have not succeeded in making this world empowering and livable for all of our own species.

", author_id: 8, image_url: "
http://res.cloudinary.com/jules-costa/image/upload/v1495152509/depression_nnqxjx.jpg", read_time: "4 min read", topic_id: 1, size: 2)
