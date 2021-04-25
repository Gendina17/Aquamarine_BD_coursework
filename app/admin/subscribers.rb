ActiveAdmin.register Subscriber do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :platform_id, :influencers_id, :number_of_subscribers
  #
  # or
  #
  # permit_params do
  #   permitted = [:platform_id, :influencers_id, :number_of_subscribers]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :platform_id, :influencer_id, :number_of_subscribers, :main

  index do
    selectable_column
    id_column
    column :platform_id
    column :influencer_id
    column :number_of_subscribers
    column :main
    actions
  end

  filter :platform_id
  filter :influencer_id
  filter :number_of_subscribers
  filter :main

  form do |f|
    f.inputs do
      f.input :platform_id
      f.input :influencer_id
      f.input :number_of_subscribers
      f.input :main
    end
    f.actions
  end
end
