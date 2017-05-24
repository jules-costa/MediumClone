# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TOPICS

# goodbye = Topic.create(title: "goodbye")
# yes = Topic.create(title: "yes")
# no = Topic.create(title: "no")

# COMMENTS

Comment.destroy_all
Story.destroy_all
User.destroy_all
Follow.destroy_all
Like.destroy_all

user1 = User.create!(username: "Guest", password: "password", biography: "Thank you for checking out Ouija! This Medium clone was built in 10 days using Ruby on Rails, React, Redux, Javascript and HTML/CSS.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495413134/user-2ef10cd87167a7021991eaaf0fb688ea1fda37f520b069b2b523d3a8e399473d_jphioe.png")
user2 = User.create!(username: "Charlotte Bronte", password: "password", biography: "Born on April 21, 1816, in Thornton, England.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495413047/CharlotteBronte_NewBioImage_blzqtv.jpg")
user3 = User.create!(username: "Ralph Waldo Emerson", password: "password", biography: "American poet, essayist, and philosopher.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495413382/rwemerso_bzyilt.jpg")
user4 = User.create!(username: "Robert Frost", password: "password", biography: "Lived and taught for many years in Massachusetts and Vermont, and died in Boston on January 29, 1963.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_289/v1495413574/frosttwitter_i9m7ue.jpg")
user5 = User.create!(username: "Langston Hughes", password: "password", biography: "Particularly known for his insightful, colorful portrayals of black life in America from the twenties through the sixties.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495414072/LangstonHuges_NewBioImage_d367bq.png")
user6 = User.create!(username: "Nikki Giovanni", password: "password", biography: "Several magazines have named Giovanni Woman of the Year, including Essence, Mademoiselle, Ebony, and Ladies Home Journal. She was the first recipient of the Rosa Parks Woman of Courage Award.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495414268/NikkiGiovanni_NewBioImage_2_xivjyi.png")
user7 = User.create!(username: "W. B. Yeats", password: "password", biography: "W. B. Yeats was awarded the Nobel Prize in 1923 and died in 1939 at the age of seventy-three.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495416188/wbyeats_qkqbar.jpg")
user8 = User.create!(username: "Sylvia Plath", password: "password", biography: "First poet to posthumously win a Pulitzer Prize.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495416675/11_splat_150_rxlbel.jpg")
user9 = User.create!(username: "William Blake", password: "password", biography: "Born in London on November 28, 1757, to James, a hosier, and Catherine Blake.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495417098/wblake_imejhp.jpg")
user10 = User.create!(username: "Natalie Diaz", password: "password", biography: "Teacher at the Institute of American Indian Arts Low Residency MFA Program in Santa Fe, New Mexico.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495417446/NatalieDiaz_NewBioImage2015-RobertoWestbrook_jqnz9g.png")
user11 = User.create!(username: "Natalie Eilbert", password: "password", biography: "Author of Swan Feast (Coconut Books, 2015), and founding editor of The Atlas Review and lives in Brooklyn, New York.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495419361/NatalieEilbert_NewBioImage2015-EmilyRaw_ihp3lj.png")
user12 = User.create!(username: "Wanda Coleman", password: "password", biography: "A former medical secretary, magazine editor, journalist, and Emmy-winning scriptwriter, Coleman received fellowships from the National Endowment for the Arts and the Guggenheim Foundation.", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495419880/WandaColeman_NewBioImage_cyy13o.png")
user13 = User.create!(username: "Marianne Moore", password: "password", biography: "Particularly fond of animals", image_url: "http://res.cloudinary.com/jules-costa/image/upload/v1495421634/mmoore_ogecaq.jpg")


Follow.create!(guru_id: user1.id, disciple_id: user13.id)
Follow.create!(guru_id: user2.id, disciple_id: user12.id)
Follow.create!(guru_id: user3.id, disciple_id: user11.id)
Follow.create!(guru_id: user4.id, disciple_id: user10.id)
Follow.create!(guru_id: user5.id, disciple_id: user9.id)
Follow.create!(guru_id: user6.id, disciple_id: user8.id)
Follow.create!(guru_id: user7.id, disciple_id: user8.id)
Follow.create!(guru_id: user8.id, disciple_id: user7.id)
Follow.create!(guru_id: user9.id, disciple_id: user6.id)
Follow.create!(guru_id: user10.id, disciple_id: user5.id)
Follow.create!(guru_id: user11.id, disciple_id: user4.id)
Follow.create!(guru_id: user12.id, disciple_id: user3.id)
Follow.create!(guru_id: user13.id, disciple_id: user2.id)
Follow.create!(guru_id: user1.id, disciple_id: user2.id)
Follow.create!(guru_id: user2.id, disciple_id: user1.id)
Follow.create!(guru_id: user5.id, disciple_id: user2.id)
Follow.create!(guru_id: user6.id, disciple_id: user3.id)
Follow.create!(guru_id: user7.id, disciple_id: user5.id)
Follow.create!(guru_id: user10.id, disciple_id: user6.id)
Follow.create!(guru_id: user11.id, disciple_id: user6.id)
Follow.create!(guru_id: user12.id, disciple_id: user7.id)
Follow.create!(guru_id: user1.id, disciple_id: user8.id)
Follow.create!(guru_id: user2.id, disciple_id: user9.id)
Follow.create!(guru_id: user3.id, disciple_id: user10.id)
Follow.create!(guru_id: user4.id, disciple_id: user11.id)
Follow.create!(guru_id: user5.id, disciple_id: user12.id)
Follow.create!(guru_id: user6.id, disciple_id: user13.id)
Follow.create!(guru_id: user7.id, disciple_id: user13.id)
Follow.create!(guru_id: user8.id, disciple_id: user2.id)
Follow.create!(guru_id: user7.id, disciple_id: user4.id)
Follow.create!(guru_id: user9.id, disciple_id: user3.id)
Follow.create!(guru_id: user2.id, disciple_id: user5.id)

# GOODBYE
story1 = Story.create!(
  title: "Evening Solace",
  body: "The human heart has hidden treasures,\nIn secret kept, in silence sealed;—\nThe thoughts, the hopes, the dreams, the pleasures,\nWhose charms were broken if revealed.\nAnd days may pass in gay confusion,\nAnd nights in rosy riot fly,\nWhile, lost in Fame’s or Wealth’s illusion,\nThe memory of the Past may die.\n\nBut there are hours of lonely musing,\nSuch as in evening silence come,\nWhen, soft as birds their pinions closing,\nThe heart’s best feelings gather home.\nThen in our souls there seems to languish\nA tender grief that is not woe;\nAnd thoughts that once wrung groans of anguish\nNow cause but some mild tears to flow.\n\nAnd feelings, once as strong as passions,\nFloat softly back—a faded dream;\nOur own sharp griefs and wild sensations,\nThe tale of others’ sufferings seem.\nOh! when the heart is freshly bleeding,\nHow longs it for that time to be,\nWhen, through the mist of years receding,\nIts woes but live in reverie!\n\nAnd it can dwell on moonlight glimmer,\nOn evening shade and loneliness;\nAnd, while the sky grows dim and dimmer,\nFeel no untold and strange distress—\nOnly a deeper impulse given\nBy lonely hour and darkened room,\nTo solemn thoughts that soar to heaven\nSeeking a life and world to come.",
  author_id: user2.id,
  read_time: "20 min read",
  description: "There are hours of lonely musing, such as in evening silence come",
  topic_id: 1,
  size: 2,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495418327/jon-phillips-17576_v1skwf.jpg"
  )

story2 = Story.create!(
  title: "The Problem",
  body: "I like a church; I like a cowl;\nI love a prophet of the soul;\nand on my heart monastic aisles\nFall like sweet strains, or pensive smiles;\nYet not for all his faith can see\nWould I that cowled churchman be.\n\nWhy should the vest on him alure,\nWhich I could not on me endure?\n\nNot from a vain or shallow thought\nHis awful Jove young Phidias brought;\nNever from lips of cunning fell\nThe thrilling Delphic oracle;\nOut from the heart of nature rolled\nThe burdens of the Bible old;\nthe litanies of nations came,\nLike the volcano’s tongue of flame,\nUp from the burning core below,--\nThe canticles of love and woe;\nThe hand that rounded Peter’s dome,\nAnd groined the aisles of Christian Rome,\nWrought in a sad sincerity;\nHimself from God he could not free;\nHe builded better than he knew;--\nThe conscious stone to beauty grew.\n\n Know’st thou what wove yon woodbird’s nest\nOf leaves, and feathers from her breast?\nOr how the fish outbuilt her shell,\nPainting with morn each annual cell?\nOr how the sacred pine-tree adds\nTo her old leaves new myriads?\nSuch and so grew these holy piles,\nWhilst love and terror laid the tiles.\nEarth proudly wears the Parthenon,\nAs the best gem upon her zone;\nAnd Morning opes with hast her lids,\nTo gaze upon the Pyramids;\nO’er england’s abbeys bends the sky,\nAs on its friends, with kindred eye;\nFor, out of Thought’s interior sphere,\nThese wonders rose to upper air;\nAnd nature gladly gave them place,\nAdopted them into her race,\nAnd granted them an equal date\nWith Andes and with Ararat.\n\nThese temples grew as grows the grass;\nArt might obey, but not surpass.\nThe passive master lent his hand\nTo the vast soul that o’er him planned;\nAnd the same power that reared the shrine,\nBestrode the stibes that knelt within.\nEver the fiery Pntecost\nGirds with one flame the countless host,\nTrances the heart through chanting choirs,\nAnd through the priest the mind inspired.\nThe word unto the prophet spoken\nWas writ on tables yet unbroken;\nThe word by seers or sibyls told,\nIn groves of oak, or fanes of gold,\nStill floats upon the morning wind,\nStill whispers to the willing mind.\nOne accent of the Holy Ghost\nThe heedless world hath never lost.\nI know what say the fathers wise,--\nThe Book itself before me lies,\nOld Chrysostom, best Augustine,\nAnd he who blent both in his line,\nThe younger Golden Lips or mines,\nTaylor, the Shakspeare of divines.\nHis words are music in my ear,\nI see his cowled portrait dear;\nAnd yet, for all his faith could see,\nI would not the good bishop be.",
  author_id: user3.id,
  read_time: "18 min read",
  description: "His words are music in my ear, I see his cowled portrait dear",
  topic_id: 1,
  size: 0,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495418608/andras-kovacs-94507_jc7t2e.jpg"
  )

story3 = Story.create!(
  title: "Night Funeral in Harlem",
  body: "Night funeral\nIn Harlem:\n\nWhere did they get\nThem two fine cars?\n\nInsurance man, he did not pay—\nHis insurance lapsed the other day—\nYet they got a satin box\nfor his head to lay.\n\nNight funeral\nIn Harlem:\n\nWho was it sent\nThat wreath of flowers?\n\nThem flowers came\nfrom that poor boy’s friends—\nThey’ll want flowers, too,\nWhen they meet their ends.\n\nNight funeral\nin Harlem:\n\nWho preached that\nBlack boy to his grave?\n\nOld preacher man\nPreached that boy away—\nCharged Five Dollars\nHis girl friend had to pay.\n\nNight funeral\nIn Harlem:\n\nWhen it was all over\nAnd the lid shut on his head\nand the organ had done played\nand the last prayers been said\n and six pallbearers\nCarried him out for dead\nAnd off down Lenox Avenue\nThat long black hearse done sped,\nThe street light\nAt his corner\nShined just like a tear—\nThat boy that they was mournin’\nWas so dear, so dear\nTo them folks that brought the flowers,\nTo that girl who paid the preacher man—\nIt was all their tears that made\nThat poor boy’s\nFuneral grand.\n\nNight funeral\nIn Harlem.",
  author_id: user5.id,
  read_time: "7 min read",
  description: "Who was it sent that wreath of flowers?",
  topic_id: 1,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495419181/dimitar-belchev-153985_i9olrk.jpg"
  )

story4 = Story.create!(
  title: "Let Everything Happen To You",
  body: "As a girl I made my calves into little drinking elephants,\nI would stare at the wonder of their pumping muscles,\nthe sup of their leg-trunks. I resuscitated a bunny once\nfrom my cat’s electric teeth. I was on neighborhood watch\nto save animals, as many as I could. My damage was easy.\nMy plainspoken voice is a watercolor. I’m afraid of it\nas I’m afraid of what the world will do to color. I don’t\nthink I’ve done much. A table leans against itself\nto be a table. I hold nothing but this air. I give it off.\nI want a literature that is not made from literature, says Bhanu.\nLast night my legs ached a low-tone. I imagined the body\ngiving itself up for another system. Dandelions tickling\nout of my knee. The meniscus a household of worms.\nIt is okay to bear. My apartment hums in a Rilke sense.\nA pain blooms. I am told that it’s okay to forego details\nof what happened. I am told it doesn’t matter now.\nI want to write sentences for days. I want days to not\nbe a sentence. We put men in boxes and sail them away.\nJustice gave me an amber necklace. I tried to swallow\nas many as I could.",
  author_id: user11.id,
  read_time: "6 min read",
  description: "Dandelions tickling out of my knee.",
  topic_id: 1,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495419599/andressa-voltolini-202193_xzopok.jpg"
  )

story5 = Story.create!(
  title: "Mastectomy",
  body: "the fall of\nvelvet plum points and umber aureolae\n\nremember living\n\nforget cool evening air kisses the rush of\nliberation freed from the brassiere\n\nforget the cupping of his hands the pleasure\nhis eyes looking down/anticipating\n\nforget his mouth. his tongue at the nipples\nhis intense hungry nursing\n\nforget sensations which begin either\non the right or the left. go thru the body\nlinger between thighs\n\nforget the space once grasped during his ecstasy\n\nsweet sweet mama you taste so",
  author_id: user12.id,
  read_time: "8 min read",
  description: "remember living",
  topic_id: 1,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495419880/arteida-mjeshtri-151140_eahck6.jpg"
  )

story6 = Story.create!(
  title: "The Sick Rose",
  body: "O Rose, thou art sick:\nThe invisible worm,\nThat flies in the night\nIn the howling storm,\n\nHas found out thy bed\nOf crimson joy;\nAnd his dark secret love\nDoes thy life destroy.",
  author_id: user9.id,
  read_time: "4 min read",
  description: "dark secret love",
  topic_id: 1,
  size: 0,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495421221/frank-mckenna-122861_ve6vc4.jpg"
  )

story7 = Story.create!(
  title: "Under a Patched Sail",
  body: "“Oh, we’ll drink once more\nwhen the wind’s off shore,”\nWe’ll drink from the good old jar,\nAnd then to port,\nFor the time grows short.\nCome lad—to the days that are!",
  author_id: user13.id,
  read_time: "1 min read",
  description: "drink from the good old jar",
  topic_id: 1,
  size: 2,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495421762/tanner-mardis-29326_zdfu8w.jpg"
  )

# NO

story8 = Story.create!(
  title: "The Cold Heaven",
  body: "Suddenly I saw the cold and rook-delighting heaven\nThat seemed as though ice burned and was but the more ice,\nAnd thereupon imagination and heart were driven\nSo wild that every casual thought of that and this\nVanished, and left but memories, that should be out of season\nWith the hot blood of youth, of love crossed long ago;\nAnd I took all the blame out of all sense and reason,\nUntil I cried and trembled and rocked to and fro,\nRiddled with light. Ah! when the ghost begins to quicken,\nConfusion of the death-bed over, is it sent\nOut naked on the roads, as the books say, and stricken\nBy the injustice of the skies for punishment?",
  author_id: user7.id,
  read_time: "7 min read",
  description: "Riddled with light.",
  topic_id: 3,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495416188/roberta-doyle-205144_za6srx.jpg"
  )

story9 = Story.create!(
  title: "Daddy",
  body: "You do not do, you do not do\nAny more, black shoe\nIn which I have lived like a foot\nFor thirty years, poor and white,\nBarely daring to breathe or Achoo.\n\nDaddy, I have had to kill you.\nYou died before I had time—\nMarble-heavy, a bag full of God,\nGhastly statue with one gray toe\nBig as a Frisco seal\n\nAnd a head in the freakish Atlantic\nWhere it pours bean green over blue\nIn the waters off beautiful Nauset.\nI used to pray to recover you.\nAch, du.\n\nIn the German tongue, in the Polish town\nScraped flat by the roller\nOf wars, wars, wars.\nBut the name of the town is common.\nMy Polack friend\n\nSays there are a dozen or two.\nSo I never could tell where you\nPut your foot, your root,\nI never could talk to you.\nThe tongue stuck in my jaw.\n\nIt stuck in a barb wire snare.\nIch, ich, ich, ich,\nI could hardly speak.\nI thought every German was you.\nAnd the language obscene\n\nAn engine, an engine\nChuffing me off like a Jew.\nA Jew to Dachau, Auschwitz, Belsen.\nI began to talk like a Jew.\nI think I may well be a Jew.\n\nThe snows of the Tyrol, the clear beer of Vienna\nAre not very pure or true.\nWith my gipsy ancestress and my weird luck\nAnd my Taroc pack and my Taroc pack\nI may be a bit of a Jew.\n\nI have always been scared of you,\nWith your Luftwaffe, your gobbledygoo.\nAnd your neat mustache\nAnd your Aryan eye, bright blue.\nPanzer-man, panzer-man, O You—\n\nNot God but a swastika\nSo black no sky could squeak through.\nEvery woman adores a Fascist,\nThe boot in the face, the brute\nBrute heart of a brute like you.\n\nYou stand at the blackboard, daddy,\nIn the picture I have of you,\nA cleft in your chin instead of your foot\nBut no less a devil for that, no not\nAny less the black man who\n\nBit my pretty red heart in two.\nI was ten when they buried you.\nAt twenty I tried to die\nAnd get back, back, back to you.\nI thought even the bones would do.\n\nBut they pulled me out of the sack,\nAnd they stuck me together with glue.\nAnd then I knew what to do.\nI made a model of you,\nA man in black with a Meinkampf look\n\nAnd a love of the rack and the screw.\nAnd I said I do, I do.\nSo daddy, I’m finally through.\nThe black telephone’s off at the root,\nThe voices just can’t worm through.\n\nIf I’ve killed one man, I’ve killed two—\nThe vampire who said he was you\nAnd drank my blood for a year,\nSeven years, if you want to know.\nDaddy, you can lie back now.\n\nThere’s a stake in your fat black heart\nAnd the villagers never liked you.\nThey are dancing and stamping on you.\nThey always knew it was you.\nDaddy, daddy, you bastard, I’m through.",
  author_id: user8.id,
  read_time: "15 min read",
  description: "They always knew it was you.",
  topic_id: 3,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495416772/les-anderson-203926_sxvb0y.jpg"
  )

story10 = Story.create!(
  title: "A Poison Tree",
  body: "I was angry with my friend:\nI told my wrath, my wrath did end.\nI was angry with my foe:\nI told it not, my wrath did grow.\n\nAnd I watered it in fears\nNight and morning with my tears,\nAnd I sunned it with smiles\nAnd with soft deceitful wiles.\n\nAnd it grew both day and night,\nTill it bore an apple bright,\nAnd my foe beheld it shine,\nAnd he knew that it was mine,--\n\nAnd into my garden stole\nWhen the night had veiled the pole;\nIn the morning, glad, I see\nMy foe outstretched beneath the tree.",
  author_id: user9.id,
  read_time: "8 min read",
  description: "And I sunned it with smiles",
  topic_id: 3,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495417180/milada-vigerova-14192_ppuxgc.jpg"
  )

story11 = Story.create!(
  title: "Why I Don't Mention Flowers When Conversations with My Brother Reach Uncomfortable Silences",
  body: "In the Kashmir mountains,\nmy brother shot many men,\nblew skulls from brown skins,\ndyed white desert sand crimson.\n\nWhat is there to say to a man\nwho has traversed such a world,\nwhose hands and eyes have\nbetrayed him?\n\nWere there flowers there? I asked.\n\nThis is what he told me:\n\nIn a village, many men\nwrapped a woman in a sheet.\nShe didn’t struggle.\nHer bare feet dragged in the dirt.\n\nThey laid her in the road\nand stoned her.\n\nThe first man was her father.\nHe threw two stones in a row.\nHer brother had filled his pockets\nwith stones on the way there.\n\nThe crowd was a hive\nof disturbed bees. The volley\nof stones against her body\ndrowned out her moans.\n\nBlood burst through the sheet\nlike a patch of violets,\na hundred roses in bloom.",
  author_id: user10.id,
  read_time: "11 min read",
  description: "a hundred roses in bloom.",
  topic_id: 3,
  size: 2,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495417480/kai-oberhauser-215045_tyrd3a.jpg"
  )

story12 = Story.create!(
  title: "The Exposed Nest",
  body: "You were forever finding some new play.\nSo when I saw you down on hands and knees\nIn the meadow, busy with the new-cut hay,\nTrying, I thought, to set it up on end,\n I went to show you how to make it stay,\n If that was your idea, against the breeze,\n And, if you asked me, even help pretend\n To make it root again and grow afresh.\n But ‘twas no make-believe with you to-day,\n Nor was the grass itself your real concern,\n Though I found your hand full of wilted fern,\n Steel-bright June-grass, and blackening heads of clover.\n ‘Twas a nest full of young birds on the ground\n The cutter-bar had just gone champing over\n (Miraculously without tasting flesh)\n And left defenseless to the heat and light.\n You wanted to restore them to their right\n Of something interposed between their sight\n And too much world at once—could means be found.\n The way the nest-full every time we stirred\n Stood up to us as to a mother-bird\n Whose coming home has been too long deferred,\n Made me ask would the mother-bird return\n And care for them in such a change of scene\n And might our meddling make her more afraid.\n That was a thing we could not wait to learn.\n We saw the risk we took in doing good,\n But dared not spare to do the best we could\n Though harm should come of it; so built the screen\n You had begun, and gave them back their shade.\n All this to prove we cared. Why is there then\n No more to tell? We turned to other things.\n I haven’t any memory—have you?—\nOf ever coming to the place again\n To see if the birds lived the first night through,\nAnd so at last to learn to use their wings. ",
  author_id: user4.id,
  read_time: "10 min read",
  description: "against the breeze",
  topic_id: 3,
  size: 0,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495417945/luke-brugger-29476_isomdm.jpg"
  )

story13 = Story.create!(
  title: "Bedtime Story",
  body: "bed calls. i sit in the dark in the living room\ntrying to ignore them\n\nin the morning, especially Sunday mornings\nit will not let me up. you must sleep\nlonger, it says\n\nfacing south\nthe bed makes me lay heavenward on my back\nwhile i prefer a westerly fetal position\n facing the wall\n\nthe bed sucks me sideways into it when i\nsit down on it to put on my shoes. this\npersistence on its part forces me to dress in\nthe bathroom where things are less subversive\n\nthe bed lumps up in anger springs popping out to\nscratch my dusky thighs\n\nmy little office sits in the alcove adjacent to\n the bed. it makes strange little sighs\nwhich distract me from my work\nsadistically i pull back the covers\n put my typewriter on the sheet and turn it on\n\nthe bed complains that i’m difficult duty\n its slats are collapsing. it bitches when i\n blanket it with books and papers. it tells me\nit’s made for blood and bone\n\nlately spiders ants and roaches\nhave invaded it searching for food",
  author_id: user12.id,
  read_time: "22 min read",
  description: "you must sleep longer",
  topic_id: 3,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495420641/mats-peter-forss-12122_tzxmyn.jpg"
  )

story14 = Story.create!(
  title: "Ah! Sunflower",
  body: "Ah! sunflower, weary of time,\nWho countest the steps of the sun,\nSeeking after that sweet golden clime\nWhere the traveller’s journey is done;\n\nWhere the youth pined away with desire,\nAnd the pale virgin shrouded in snow,\nArise from their graves and aspire;\nWhere my sunflower wishes to go.",
  author_id: user9.id,
  read_time: "5 min read",
  description: "weary of time",
  topic_id: 3,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495421392/thomas-smith-196864_jpubrt.jpg"
  )

# YES

story15 = Story.create!(
  title: "Life",
  body: "Life, believe, is not a dream\nSo dark as sages say;\nOft a little morning rain\nForetells a pleasant day.\nSometimes there are clouds of gloom,\nBut these are transient all;\nIf the shower will make the roses bloom,\nO why lament its fall?\nRapidly, merrily,\nLife’s sunny hours flit by,\nGratefully, cheerily\nEnjoy them as they fly!\nWhat though Death at times steps in,\nAnd calls our Best away?\nWhat though sorrow seems to win,\nO’er hope, a heavy sway?\nYet Hope again elastic springs,\nUnconquered, though she fell;\nStill buoyant are her golden wings,\nStill strong to bear us well.\nManfully, fearlessly,\nThe day of trial bear,\nFor gloriously, victoriously,\nCan courage quell despair!",
  author_id: user2.id,
  read_time: "6 min read",
  description: "Oft a little morning rain foretells a pleasant day.",
  topic_id: 2,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495415150/gabriel-pangilinan-18321_op8mfn.jpg"
  )

story16 = Story.create!(
  title: "Days",
  body: "Daughters of Time, the hypocritic Days,\nMuffled and dumb like barefoot dervishes,\nAnd marching single in an endless file,\nBring diadems and fagots in their hands.\nTo each they offer gifts after his will,\nBread, kingdom, stars, and sky that holds them all.\nI, in my pleached garden, watched the pomp,\nForgot my morning wishes, hastily\nTook a few herbs and apples, and the Day\nTurned and departed silent. I, too late,\nUnder her solemn fillet saw the scorn.",
  author_id: user3.id,
  read_time: "4 min read",
  description: "herbs and apples",
  topic_id: 2,
  size: 0,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495415191/mikesh-kaos-42527_c0luqi.jpg"
  )

story17 = Story.create!(
  title: "After Apple-Picking",
  body: "My long two-pointed ladder’s sticking through a tree\nToward heaven still,\nAnd there’s a barrel that I didn’t fill\nBeside it, and there may be two or three\nApples I didn’t pick upon some bough.\nBut I am done with apple-picking now.\nEssence of winter sleep is on the night,\nThe scent of apples: I am drowsing off.\nI cannot rub the strangeness from my sight\nI got from looking through a pane of glass\nI skimmed this morning from the drinking trough\nAnd held against the world of hoary grass.\nIt melted, and I let it fall and break.\nBut I was well\nUpon my way to sleep before it fell,\nAnd I could tell\nWhat form my dreaming was about to take.\nMagnified apples appear and disappear,\nStem end and blossom end,\nAnd every fleck of russet showing clear.\nMy instep arch not only keeps the ache,\nIt keeps the pressure of a ladder-round.\nI feel the ladder sway as the boughs bend.\nAnd I keep hearing from the cellar bin\nThe rumbling sound\nOf load on load of apples coming in.\nFor I have had too much\nOf apple-picking: I am overtired\nOf the great harvest I myself desired.\nThere were ten thousand thousand fruit to touch,\nCherish in hand, lift down, and not let fall.\nFor all\nThat struck the earth,\nNo matter if not bruised or spiked with stubble,\nWent surely to the cider-apple heap\nAs of no worth.\nOne can see what will trouble\nThis sleep of mine, whatever sleep it is.\nWere he not gone,\nThe woodchuck could say whether it’s like his\nLong sleep, as I describe its coming on,\nOr just some human sleep.",
  author_id: user4.id,
  read_time: "10 min read",
  description: "Magnified apples appear and disappear",
  topic_id: 2,
  size: 2,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495415177/chloe-ridgway-169406_vus5yb.jpg"
  )

story18 = Story.create!(
  title: "Dreams",
  body: "Hold fast to dreams\nFor if dreams die\nLife is a broken-winged bird\nThat cannot fly.\n\nHold fast to dreams\nFor when dreams go\nLife is a barren field\nFrozen with snow.",
  author_id: user5.id,
  read_time: "4 min read",
  description: "Hold fast to dreams",
  topic_id: 2,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495415169/megan-hodges-96121_tmzpzb.jpg"
  )

story19 = Story.create!(
  title: "A Journey",
  body: "It’s a journey . . . that I propose . . . I am not the guide . . . nor technical assistant . . . I will be your fellow passenger . . .\n\nThough the rail has been ridden . . . winter clouds cover . . . autumn’s exuberant quilt . . . we must provide our own guide-posts . . .\n\nI have heard . . . from previous visitors . . . the road washes out sometimes . . . and passengers are compelled . . . to continue groping . . . or turn back . . . I am not afraid . . .\n\nI am not afraid . . . of rough spots . . . or lonely times . . . I don’t fear . . . the success of this endeavor . . . I am Ra . . . in a space . . . not to be discovered . . . but invented . . .\n\nI promise you nothing . . . I accept your promise . . . of the same we are simply riding . . . a wave . . . that may carry . . . or crash . . .\n\nIt’s a journey . . . and I want . . . to go . . .",
  author_id: user6.id,
  read_time: "5 min read",
  description: "I'm not afraid...I don't fear...",
  topic_id: 2,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495415167/danka-peter-178_mp03vg.jpg"
  )

story20 = Story.create!(
  title: "The Heart of the Woman",
  body: "O what to me the little room\nThat was brimmed up with prayer and rest;\nHe bade me out into the gloom,\nAnd my breast lies upon his breast.\n\nO what to me my mother’s care,\nThe house where I was safe and warm;\nThe shadowy blossom of my hair\nWill hide us from the bitter storm.\n\nO hiding hair and dewy eyes,\nI am no more with life and death,\nMy heart upon his warm heart lies,\nMy breath is mixed into his breath. ",
  author_id: user7.id,
  read_time: "7 min read",
  description: "And my breast lies upon his breast.",
  topic_id: 3,
  size: 1,
  image_url: "http://res.cloudinary.com/jules-costa/image/upload/c_scale,w_700/v1495420892/maria-darii-37401_b7rinc.jpg"
  )


Comment.create!(author_id: user2.id, story_id: story20.id, body: "This poem is truly beautiful. Thank you so much for sharing.")
Comment.create!(author_id: user3.id, story_id: story20.id, body: "You have no idea how much this poem has impacted me. Thanks a million.")
Comment.create!(author_id: user4.id, story_id: story19.id, body: "Posts like these remind me why I love Ouija. It's such a great place to connect with people!")
Comment.create!(author_id: user5.id, story_id: story18.id, body: "Wow. So powerful!")
Comment.create!(author_id: user6.id, story_id: story17.id, body: "You have such a unique writing style. I hope one day to be able to express my thoughts and emotions half as eloquently as you.")
Comment.create!(author_id: user7.id, story_id: story16.id, body: "Such a sweet way to start my day. Thanks for sharing!")
Comment.create!(author_id: user8.id, story_id: story15.id, body: "This poem is exquisite!")
Comment.create!(author_id: user9.id, story_id: story14.id, body: "Where on earth did you come up with this?! You have a brilliant mind.")
Comment.create!(author_id: user10.id, story_id: story13.id, body: "I'm going to share this with my friends and family! You've truly touched me.")
Comment.create!(author_id: user11.id, story_id: story12.id, body: "I am so happy I stumbled across your work. Lovely.")
Comment.create!(author_id: user12.id, story_id: story11.id, body: "I'm not usually one to leave comments, but this poem has compelled me to encourage other readers to stop and read. Really read it guys...there are so many layers here.")
Comment.create!(author_id: user13.id, story_id: story10.id, body: "I don't understand this at all and I love it.")
Comment.create!(author_id: user1.id, story_id: story9.id, body: "I can't get enough of your poetry! Very thought-provoking and impactful.")
Comment.create!(author_id: user2.id, story_id: story8.id, body: "Today, I am grateful for this poem. I am grateful for Ouija!  It will be a glorious day!")
Comment.create!(author_id: user3.id, story_id: story7.id, body: "The Ouija community is so inviting and comforting. Poems like this keep me going!")
Comment.create!(author_id: user4.id, story_id: story6.id, body: "I rarely find poems that I like, and yours is just remarkable. Looking forward to reading more of your work.")
Comment.create!(author_id: user5.id, story_id: story5.id, body: "How lucky am I to have poems like this at my fingertips?! I just can't get enough!")
Comment.create!(author_id: user6.id, story_id: story4.id, body: "Poetry bores me, but THIS poetry moves me. Thank you for sharing.")
Comment.create!(author_id: user7.id, story_id: story3.id, body: "I hope to be brave enough to share my own poetry with the world one day... If I ever do, trust that it'll be on Ouija first!")
Comment.create!(author_id: user8.id, story_id: story2.id, body: "I disagree with the underlying message, but appreciate your style of prose.")
Comment.create!(author_id: user9.id, story_id: story1.id, body: "Powerful! Intriguing! Impressive! Just wow!")

Like.create!(user_id: user2.id, story_id: story20.id)
Like.create!(user_id: user2.id, story_id: story19.id)
Like.create!(user_id: user2.id, story_id: story18.id)
Like.create!(user_id: user2.id, story_id: story17.id)
Like.create!(user_id: user3.id, story_id: story16.id)
Like.create!(user_id: user3.id, story_id: story15.id)
Like.create!(user_id: user3.id, story_id: story14.id)
Like.create!(user_id: user3.id, story_id: story13.id)
Like.create!(user_id: user4.id, story_id: story12.id)
Like.create!(user_id: user4.id, story_id: story11.id)
Like.create!(user_id: user4.id, story_id: story10.id)
Like.create!(user_id: user5.id, story_id: story9.id)
Like.create!(user_id: user5.id, story_id: story8.id)
Like.create!(user_id: user5.id, story_id: story7.id)
Like.create!(user_id: user5.id, story_id: story6.id)
Like.create!(user_id: user4.id, story_id: story5.id)
Like.create!(user_id: user2.id, story_id: story4.id)
Like.create!(user_id: user2.id, story_id: story3.id)
Like.create!(user_id: user2.id, story_id: story2.id)
Like.create!(user_id: user2.id, story_id: story1.id)
Like.create!(user_id: user6.id, story_id: story20.id)
Like.create!(user_id: user6.id, story_id: story19.id)
Like.create!(user_id: user6.id, story_id: story18.id)
Like.create!(user_id: user6.id, story_id: story17.id)
Like.create!(user_id: user6.id, story_id: story16.id)
Like.create!(user_id: user7.id, story_id: story15.id)
Like.create!(user_id: user7.id, story_id: story14.id)
Like.create!(user_id: user7.id, story_id: story13.id)
Like.create!(user_id: user2.id, story_id: story15.id)
Like.create!(user_id: user1.id, story_id: story14.id)
Like.create!(user_id: user1.id, story_id: story13.id)
Like.create!(user_id: user8.id, story_id: story12.id)
Like.create!(user_id: user8.id, story_id: story11.id)
Like.create!(user_id: user8.id, story_id: story10.id)
Like.create!(user_id: user8.id, story_id: story9.id)
Like.create!(user_id: user8.id, story_id: story8.id)
Like.create!(user_id: user8.id, story_id: story7.id)
Like.create!(user_id: user1.id, story_id: story9.id)
Like.create!(user_id: user9.id, story_id: story8.id)
Like.create!(user_id: user9.id, story_id: story7.id)
Like.create!(user_id: user9.id, story_id: story6.id)
Like.create!(user_id: user9.id, story_id: story5.id)
Like.create!(user_id: user10.id, story_id: story4.id)
Like.create!(user_id: user10.id, story_id: story3.id)
Like.create!(user_id: user10.id, story_id: story2.id)
Like.create!(user_id: user11.id, story_id: story1.id)
Like.create!(user_id: user11.id, story_id: story3.id)
Like.create!(user_id: user11.id, story_id: story2.id)
Like.create!(user_id: user13.id, story_id: story1.id)
Like.create!(user_id: user11.id, story_id: story14.id)
Like.create!(user_id: user11.id, story_id: story13.id)
Like.create!(user_id: user12.id, story_id: story12.id)
Like.create!(user_id: user12.id, story_id: story11.id)
Like.create!(user_id: user12.id, story_id: story10.id)
Like.create!(user_id: user13.id, story_id: story9.id)
Like.create!(user_id: user13.id, story_id: story8.id)
