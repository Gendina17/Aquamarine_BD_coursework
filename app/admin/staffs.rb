ActiveAdmin.register Staff do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :surname, :work_experience, :position, :number_of_orders
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :surname, :work_experience, :position, :number_of_orders]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :name, :surname, :work_experience, :position, :number_of_orders, :mail, :avatar
  index do
    selectable_column
    id_column
    column :name
    column :surname
    #column :current_sign_in_at
    #column :sign_in_count
    column :created_at
    actions
  end

  filter :name
  filter :surname
  #filter :current_sign_in_at
  #filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :surname
      f.input :work_experience
      f.input :position
      f.input :number_of_orders
      f.input :mail
      f.input :avatar
    end
    f.actions
  end

end
