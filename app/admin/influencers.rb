ActiveAdmin.register Influencer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :nick, :mail
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :nick, :mail]
  #   permitted << :rails generate active_admin:resource Influencerother if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :name, :nick, :mail, :surname, :birthday, :avatar, :city, :info, :age_of_subscribers

  index do
    selectable_column
    id_column
    column :name
    #column :current_sign_in_at
    #column :sign_in_count
    column :created_at
    actions
  end

  filter :name
  #filter :current_sign_in_at
  #filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :surname
      f.input :nick
      f.input :mail
      f.input :birthday
      f.input :avatar
      f.input :city
      f.input :info
      f.input :age_of_subscribers
    end
    f.actions
  end
  
end
