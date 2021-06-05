class MainController < ApplicationController

  @@current = 0
  @@key = true
  @@number_orders = 20
  @@value = ""
  @@tag = ""

  def self.current()
    @@current
  end

  def self.influencers()
    @@influencers
  end

  def index
  end

  def show
    @influencers = Influencer.take(30)
    @@current = 0
  end

  def clients
    @clients = Company.take(30)
    @@current = 0
  end

  def influencer_profile
    id = params[:id].to_i
    if id.to_s =~ /\A[0-9]+\Z/
      if (@influencer = Influencer.find_by_id(id))
      else
        render :error
      end
    else
      render :error
    end
  end

  def contacts
  end

  def company_profile
    id = params[:id].to_i
    if id.to_s =~ /\A[0-9]+\Z/
      if (@client = Company.find_by_id(id))
         @curator = Staff.find_by_id(@client.staff.id)
      else
        render :error
      end
    else
      render :error
    end
  end
  
  def orders
    @@number_orders = 20
    @@key = true
    @orders = Order.order(:date_order).reverse.take(20)
  end

  def add_cards
    @@current = @@current + 30
    @influencers = Influencer.limit(30).offset(@@current)
    respond_to do |format|
      format.js
    end
  end

  def add_clients
    @@current = @@current + 30
    @clients = Company.limit(30).offset(@@current)
    respond_to do |format|
      format.js
    end
  end

  def add_orders
    @@number_orders = @@number_orders + 20
    if @@key
      @orders = Order.order(:date_order).reverse_order.offset(@@number_orders).limit(20)
    else
      @orders = Order.order(:date_order).limit(20).offset(@@number_orders)
    end
    respond_to do |format|
      format.js
    end
  end

  def sort_order
    if @@key
      @@key = false
      @orders = Order.order(:date_order).take(@@number_orders)
    else
      @@key = true
      @orders = Order.order(:date_order).reverse.take(@@number_orders)
    end
    respond_to do |format|
      format.js
    end
  end

  def search
    @influencers = []
    @nick = params[:nick]
    if @nick.strip.split.size > 1
      for_search_first = @nick.strip.split[0].strip 
      for_search_second = @nick.strip.split[1].strip
      @influencers += Influencer.where('("name" = ? and "surname" ilike ?) or ("surname" = ? and "name" ilike ?)', for_search_first, '%'+ for_search_second + '%', for_search_first, '%' + for_search_second + '%').all
    else
      for_search = '%' + @nick.strip + '%'
      @influencers += Influencer.where('("nick" ilike ?) or ("name" ilike ?) or ("surname" ilike ?)', for_search, for_search, for_search).all
    end
    respond_to do |format|
      format.json do
        render json:
                   { influencers: @influencers}
      end
    end
  end

  def platform_card
    @sort = params[:sort]
    @value = params[:platform_id]
    @tag = params[:tag_id]
    @influencers = []

    if (@sort == "0")
      @value = params[:platform_id]
      @tag = params[:tag_id]
      @@value = @value
      @@tag = @tag
      if (@value != "" and @tag == "")
        Subscriber.where(' "platform_id" = ? and "main" = ? ', @value, "true").order("number_of_subscribers DESC").take(100).map {|cur| @influencers << Influencer.find_by_id(cur.influencer_id)}
      elsif (@value == "" and @tag != "")
        @tag = Tag.find_by_id(@tag).tag
        Tag.where(' "tag" = ? ', @tag).take(100).map {|cur| @influencers << Influencer.find_by_id(cur.influencer_id)}
      else
        ar_s = []
        Subscriber.where(' "platform_id" = ? and "main" = ? ', @value, "true").order("number_of_subscribers DESC").take(500).map {|cur| ar_s << Influencer.find_by_id(cur.influencer_id)}
        @tag = Tag.find_by_id(@tag).tag
        ar_s.map do |el|
          key = 0
          Tag.where(' "influencer_id" = ? ', el.id).map do |el2|
            if (el2.tag == @tag)
              key = 1
            end
          end
          if (key == 1)
            @influencers << el
          end
        end
      end
    else
      if (@@value != "" and @@tag == "")
        Subscriber.where(' "platform_id" = ? and "main" = ? ', @@value, "true").order("number_of_subscribers").take(100).map {|cur| @influencers << Influencer.find_by_id(cur.influencer_id)}
      elsif (@@value == "" and @@tag != "")
        @@tag = Tag.find_by_id(@@tag).tag
        Tag.where(' "tag" = ? ', @@tag).take(100).map {|cur| @influencers << Influencer.find_by_id(cur.influencer_id)}
      else
        ar_s = []
        Subscriber.where(' "platform_id" = ? and "main" = ? ', @@value, "true").order("number_of_subscribers").take(500).map {|cur| ar_s << Influencer.find_by_id(cur.influencer_id)}
        @@tag = Tag.find_by_id(@@tag).tag
        ar_s.map do |el|
          key = 0
          Tag.where(' "influencer_id" = ? ', el.id).map do |el2|
            if (el2.tag == @@tag)
              key = 1
            end
          end
          if (key == 1)
            @influencers << el
          end
        end
      end
    end
    respond_to do |format|
      format.js
    end
  end

  def curators
    @curators = Staff.order(number_of_orders: :desc, work_experience: :desc).limit(20)
  end

end
