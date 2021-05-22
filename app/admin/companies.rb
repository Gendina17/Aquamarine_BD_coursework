ActiveAdmin.register Company do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :start_of_cooperation, :successful_orders, :staff_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :start_of_cooperation, :successful_orders, :staff_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :name, :start_of_cooperation, :successful_orders, :staff_id, :avatar, :industry, :mail, :password_digest

  index do
    selectable_column
    id_column
    column :name
    column :industry
    column :start_of_cooperation
    column :successful_orders
    column :staff_id
    actions
  end

  filter :name
  filter :industry
  filter :start_of_cooperation
  filter :successful_orders
  filter :staff_id
  

  form do |f|
    f.inputs do
      f.input :name
      f.input :start_of_cooperation
      f.input :successful_orders
      f.input :staff_id
      f.input :avatar
      f.input :industry
      f.input :mail
      f.input :password_digest
    end
    f.actions
  end
end
