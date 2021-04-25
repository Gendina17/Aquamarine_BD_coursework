require 'faker'
array = ['smm manager', 'photographer', 'manager', 'head of department', 'creative producer', 'director', 'advertiser',
  	 'senior manager', 'intern', 'executive director', 'designer', 'web designer', 'creative producer', 'client manager']
  	Faker::Config.locale = :en
  	100.times {
  	@interest = Staff.new
    @interest.name = Faker::Name.unique.first_name
    @interest.surname = Faker::Name.unique.last_name
    @interest.mail = Faker::Internet.unique.email
    @interest.avatar = Faker::Avatar.image
    @interest.work_experience = rand(10)+1 
    @interest.number_of_orders = rand(30)+1
    @interest.position = array[rand(array.size)]
    @interest.save
    }


    
    email = ['@gmail.com','@mail.ru', '123@mail.com', '2000@gmail.com', '@bmstu.ru', '@yandex.ru', 
             '_love@yandex.ru', '@bk.com', '@rambler.ru', '@yahoo.com', '_love@mail.ru', '.official@gmail.com', 
             '_smm@yandex.ru', '123@rambler.ru', '666@bk.com', '_agency@yahoo.com', '5555@mail.ru']
    age = ['10 - 15', '16 - 18', '18 - 22', '22 - 25', '25 - 30', '30 - 40', '40+']
    city = ['Moscow', 'St. Petersburg', 'Yaroslavl', 'Tula', 'Sochi', 'Rostov Veliky', 'Dmitrov', 'Sevastopol',
            'Chelyabinsk', 'Yekaterinburg', 'Krasnodar', 'Kaliningrad', 'Volgograd', 'Vladivostok', 'Ryazan', 
            'Kazan', 'Novosibirsk', 'Dmitrov', 'Kursk', 'Pushkino', 'Voronezh', 'Anapa', 'Smolensk', 'Omsk' , 
            'Khabarovsk', 'Krasnoyarsk', 'Vladikavkaz']
    qualities = ['creative', 'funny', 'resourceful', 'popular', 'sociable', 'bright', 'extraordinary',
                  'famous', 'daring', 'versatile', 'young', 'cute', 'loved', 'talented', 'energetic']
    whoss = ['weiner', 'singer', 'streamer', 'actor', 'weiner', 'pranker', 'comedian', 'presenter',
            'musician', 'dancer', 'tiktoker', 'model', 'gamer', 'journalist', 'interviewer', 'vlogger']
    doing = ['he gained his popularity by shooting short comedy videos', 'today he has many loyal subscribers, and their number continues to grow rapidly',
             'he lives an active life, managing to engage in both creativity and his own restaurant business', 
             'he quite often appears on Russian TV and Radio, became known for his collaborations with extreme scenarios and extraordinary situations',
             'most of the videos are sketches on the most pressing life topics: about relationships, family and friendship',
             'each of her videos is full of humor and sarcasm', 'not only shoots vines herself, but also takes part in pranks and pranks from other millionaire bloggers',
             'the main Youtube skeptic and life hack exposer', 'in his shows, he crosses the line between realities and you never know that he will wait for him',
             'he himself adheres to a skeptical view of things, but at the same time he does not lose hope of finding something really interesting',
             'the channel opened in April 2016, quickly gained popularity and continues to grow all this time',
             'received the Nickelodeon Kids Choice Awards in March 2017 as Favorite Russian Internet Star',
             'the topics of the video are very diverse: DIY, life hacks, challenges and practical jokes',
             'as he himself says, he simply talks about everything that is interesting to the audience',
             'in addition to the channel, he runs a popular Instagram account in which he talks about his life, shares travel photos and uploads challenges, checks of life hacks and funny sketches, organizer of the Kind Heart charity event',
             'today, the Instagram profile has a huge number of subscribers, and videos collect millions of views',
             'shoots a variety of content that will not leave anyone aside and make you smile: funny pranks, humorous sketches, various challenges and touching videos in support of the "Kind Heart" campaign']
    nick = [Faker::Movies::HarryPotter.unique.character, Faker::TvShows::Friends.unique.character, Faker::TvShows::HeyArnold.unique.character, Faker::Games::Pokemon.unique.name,
            Faker::Creature::Animal.unique.name, Faker::Superhero.unique.name, Faker::Artist.unique.name, 'ivangai', 'pupsi', 'whoopsen', 'vest', 'phantom', 'agentgirl', 'spice girls']
    200.times {
    @inf = Influencer.new
    @inf.name = Faker::Name.unique.first_name
    @inf.surname = Faker::Name.last_name
    @inf.mail = @inf.surname + email[rand(email.size)]
    @inf.avatar = Faker::Avatar.image
    @inf.age_of_subscribers = age[rand(age.size)]
    @inf.nick = nick[rand(nick.size)]
    @inf.info = @inf.nick + ' - ' +qualities[rand(qualities.size)]+' and '+qualities[rand(qualities.size)]+' blogger, '+ whoss[rand(whoss.size)]+ ', ' +doing[rand(doing.size)]+', '+doing[rand(doing.size)]
    @inf.birthday = Faker::Date.birthday(min_age: 16, max_age: 40)
    @inf.city = city[rand(city.size)]
    @inf.save
    }



    tags = ['vines', 'clips', 'lifestyle', 'streams', 'reviews', 'humor', 'scientific pop', 'practical jokes',
           'sketches', 'entertainment', 'auto', 'beauty', 'entertainment', 'experiments', 'challenges', 'author show',
           'music', 'DIY', 'unboxing', 'life hacks', 'food', 'sports', 'comparisons', 'travel', 'photography']
    200.times {
     @inf = Influencer.find(rand(1840)+7)
     @book = @inf.tags.create(tag: tags[rand(tags.size)])
    }



    @inf = Influencer.find(1000)
    @book = @inf.subscribers.create(number_of_subscribers:456789)





    platf = [[5,2,3], [2,3,8], [3,6,5], [5, 7, 8], [2, 8, 6], [2, 9, 5], [3, 10, 9], [3, 11, 12], 
             [4, 8, 12], [12, 10, 13], [8, 9, 10], [12, 6, 3], [2, 3], [5, 3], [5, 6], [10, 12], [13, 2, 3],
              [4, 7, 8], [6, 9, 12], [7, 2, 9], [9, 12, 10], [11, 6, 2], [10, 13], [5, 2], [5, 9]]
(1801..1874).step { |x|
ar = platf[rand(platf.size)]
ar.map.with_index { |i, index|
@a = Subscriber.new
@a.influencer_id = x
@a.number_of_subscribers= rand(10) * 10000 + rand(10) * 100000 + rand(10) * 1000000
if @a.number_of_subscribers == 0 
  @a.number_of_subscribers = 100000
end
@a.platform_id = i
@a.main = false
if index == 0
  @a.main = true
  end
@a.save
}
} 



100.times {
  	@a = Company.new
  	@a.name = Faker::Company.unique.name 
  	@a.start_of_cooperation = Faker::Date.birthday(min_age: 1, max_age: 20)
  	@a.successful_orders = rand(29)+1
  	@a.staff_id = rand(314)+3
  	@a.avatar = Faker::Company.logo
  	@a.industry = Faker::Company.industry
  	@a.save
  }



  kinds = ['post', 'photo', 'video', 'clip', 'song', 'stream', 'story', 'mark', 
             'record','banner', 'nature', 'interactive', 'event']
    (2..3).step {|x|
    
    
    kinds.map { |i|
      @a = AdvertesimentKind.new
    @a.platform_id = x
      @a.influence_coefficient = rand(0.1 .. 0.6).round(2)
      @a.kinds = i
      @a.save
    }
  }

  @object = Tag.all

@object.each do |o|
  o.delete
end




 tags = ['vines', 'clips', 'lifestyle', 'streams', 'reviews', 'humor', 'scientific pop', 'practical jokes',
           'sketches', 'entertainment', 'auto', 'beauty', 'entertainment', 'experiments', 'challenges', 'author show',
           'music', 'DIY', 'unboxing', 'life hacks', 'food', 'sports', 'comparisons', 'travel', 'photography']

           (1001..1874).step {|x| 
            a = rand(5)+1
           arr = []
           a.times{
            arr << tags[rand(tags.size)]
           }
           arr = arr.uniq
            @inf = Influencer.find(x)
            arr.size.times {|i|
             @book = @inf.tags.create(tag: arr[i])
            }
            
           }




#arr = [['different subjects', Faker::Commerce.unique.product_name] , ['movie', Faker::Movie.unique.title],['restaurant', Faker::Restaurant.unique.name], 
 #     ['game', Faker::Game.unique.title], ['device', Faker::Device.unique.model_name],['appliance',Faker::Appliance.unique.equipment ] ,['game_device', Faker::Game.unique.platform]]



           i = 3
1516.times {
    @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = i
    @interest.advertesiment_kind_id = rand(155)+3
    @interest.product = Faker::Commerce.unique.product_name
    @interest.type_product = 'different subjects'
    @interest.save
    i = i+1
    @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = i
    @interest.advertesiment_kind_id = rand(155)+3 
    @interest.product = Faker::Movie.title
    @interest.type_product = 'movie'
    @interest.save
i = i+1
    @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = i
    @interest.advertesiment_kind_id = rand(155)+3
    @interest.product = Faker::Restaurant.name
    @interest.type_product = 'restaurant'
    @interest.save
i = i+1
    @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = i
    @interest.advertesiment_kind_id = rand(155)+3
    @interest.product = Faker::Game.title
    @interest.type_product = 'game'
    @interest.save
i = i+1
     @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = i
    @interest.advertesiment_kind_id = rand(155)+3
    @interest.product = Faker::Device.model_name
    @interest.type_product = 'device'
    @interest.save
i = i+1
     @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = i
    @interest.advertesiment_kind_id = rand(155)+3 
    @interest.product = Faker::Appliance.equipment
    @interest.type_product = 'appliance'
    @interest.save
i = i+1
 @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = i
    @interest.advertesiment_kind_id = rand(155)+3
    @interest.product = Faker::Game.platform
    @interest.type_product = 'game_device'
    @interest.save
    i = i+1
    }


# i = 3
#     1516.times do
#  @interest = Order.new
#     @interest.staff_id = rand(314)+3
#     @interest.company_id = i
#     @interest.advertesiment_kind_id = rand(155)+3
#     @interest.product = Faker::Commerce.unique.product_name
#     @interest.type_product = 'different subjects'
#     @interest.save
# i++
#     @interest = Order.new
#     @interest.staff_id = rand(314)+3
#     @interest.company_id = i
#     @interest.advertesiment_kind_id = rand(155)+3 
#     @interest.product = Faker::Movie.title
#     @interest.type_product = 'movie'
#     @interest.save
# i++
#     @interest = Order.new
#     @interest.staff_id = rand(314)+3
#     @interest.company_id = i
#     @interest.advertesiment_kind_id = rand(155)+3
#     @interest.product = Faker::Restaurant.name
#     @interest.type_product = 'restaurant'
#     @interest.save
# i++
#     @interest = Order.new
#     @interest.staff_id = rand(314)+3
#     @interest.company_id = i
#     @interest.advertesiment_kind_id = rand(155)+3
#     @interest.product = Faker::Game.title
#     @interest.type_product = 'game'
#     @interest.save
# i++
#      @interest = Order.new
#     @interest.staff_id = rand(314)+3
#     @interest.company_id = i
#     @interest.advertesiment_kind_id = rand(155)+3
#     @interest.product = Faker::Device.model_name
#     @interest.type_product = 'device'
#     @interest.save
# i++
#      @interest = Order.new
#     @interest.staff_id = rand(314)+3
#     @interest.company_id = i
#     @interest.advertesiment_kind_id = rand(155)+3 
#     @interest.product = Faker::Appliance.equipment
#     @interest.type_product = 'appliance'
#     @interest.save
# i++
#  @interest = Order.new
#     @interest.staff_id = rand(314)+3
#     @interest.company_id = i
#     @interest.advertesiment_kind_id = rand(155)+3
#     @interest.product = Faker::Game.platform
#     @interest.type_product = 'game_device'
#     @interest.save
# i++
# end

 arr = ['face', 'cleansing cream', 'washing mousse', 'washing foam', 'washing gel', 'micellar water', 'tonic', 'scrub',
         'gommage', 'lotion', 'thermal water', 'cosmetic oil', 'shower gel', 'soap', 'face cream', 'acne cream', 
         'cream for hands', 'serum', 'face mask', 'hygienic lipsticks', 'balm for face and body', 'shampoo', 'conditioner',
         'hair mask', 'hair balm', 'toothpaste', 'mouthwash', 'deodorant', 'antiperspirant', 'foundation', 'powder',
          'corrector', 'concealer', 'blush', 'highlighter', 'eyeliner', 'mascara', 'shadows', 'glitters', 'primer', 'lipstick',
           'gloss', 'pencil', 'mascara', 'transparent gel']
           arr2 = ['Snickers bar', 'Kitkat bar', 'Twix bar', 'Bounty bar', 'Chocopay', 'Coca Cola', 'Sprite', 'Fanta', 'Pringles chips', 'Lace chips', '3 crusty croutons']
           arr2.map {|x|
             @interest = Order.new
    @interest.staff_id = rand(314)+3
    @interest.company_id = rand(10610)+3
    @interest.advertesiment_kind_id = rand(155)+3
    @interest.product = x
    @interest.type_product = 'food'
    @interest.save
           }


           
 (7..32036).step {|a|
    @a = InfluencersOrder.new
     b = rand(56080)+4
     c = InfluencersOrder.all.find_by_order_id_and_influencer_id(b, a)
     if (c == nil)
        @a.order_id = b
@a.influencer_id = a
     end
 @a.save
 }

15000.times {
@a = InfluencersOrder.new
     a = rand(32029)+7
     b = rand(56080)+4
     c = InfluencersOrder.all.find_by_order_id_and_influencer_id(b, a)
     if (c == nil)
        @a.order_id = b
@a.influencer_id = a
     end

 @a.save
}


(7..8).step do |x|
    @a = Subscriber.where(influencer_id:x)
    arr = []
    @a.map {|y|
        arr << y.platform_id
    }
    arr2 = []
    arr.size.times { |z|
        @b = AdvertesimentKind.where(platform_id:z)
        @b.map {|w|
        arr2 << w.id
    }
    (rand(3)+1).times {
        @c = Price.new
    @c.influencer_id = x
    @c.advertesiment_kind_id = arr2[rand(arr2.size)]
    @c.price = rand(10)* 100000 + rand(6)*1000000
    if @c.price == 0
      @c.price = 500000
    end
    @c.discount = rand(50)+5
    @c.coefficient = rand(0.1 .. 0.9).round(2)
    @c.save
    }
    }
end



 (10001..32036).step do |x|
        @a = InfluencersOrder.where(influencer_id:x)
        arr = []
        @a.map {|a|
            arr << a.order_id
        }
        arr.map {|y|
            @b = Order.find_by_id(y)
            @c = Price.new
    @c.influencer_id = x
    @c.advertesiment_kind_id = @b.advertesiment_kind_id
    @c.price = rand(10)* 100000 + rand(6)*1000000
    if @c.price == 0
      @c.price = 500000
    end
    @c.discount = rand(50)+5
    @c.coefficient = rand(0.1 .. 0.9).round(2)
    @c.save

        }
    end



    (46484..56484).step {|x|
@a = Order.find_by_id(x)
if @a.staff_id < 118
    @a.staff_id = rand (400)+118
    end
    @a.save
   }

   @a = Company.all
   @a.map {|x|
    if x.staff_id<118
        x.staff_id = rand (400)+118
         x.save
    end}

@a = Company.all
i=0
@a.map {|x|
    if x.staff_id<118
        i=i+1 
    end
    }
    @b = i


    i=0
   @q = Influencer.all
   @q.map{|a|
    
     nick = [Faker::Movies::HarryPotter.character, Faker::TvShows::Friends.character, Faker::TvShows::HeyArnold.character, Faker::Games::Pokemon.name,
            Faker::Creature::Animal.name, Faker::Superhero.name, Faker::Artist.name]
    a.nick = nick[rand(nick.size)]
    i=i+1
   a.save
@b=i
   }

   
    (404..56479).step {|x|
@a = Order.find_by_id(x)
@a.date_order = Faker::Date.birthday(min_age: 0, max_age: 15)
    @a.save
   }
