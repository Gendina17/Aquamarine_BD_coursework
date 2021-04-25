ActiveAdmin.register Platform do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :type
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :name, :type_of_activity, :icon
  index do
    selectable_column
    id_column
    column :name
    column :type_of_activity
    column :icon
  
    actions
  end

  filter :name
  filter :type_of_activity
  filter :icon

  form do |f|
    f.inputs do
      f.input :name
      f.input :type_of_activity
      f.input :icon
    end
    f.actions
  end


end
