ActiveAdmin.register AdvertesimentKind do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :platform_id, :kinds, :influence_coefficient
  #
  # or
  #
  # permit_params do
  #   permitted = [:platform_id, :kinds, :influence_coefficient]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :platform_id, :kinds, :influence_coefficient

  index do
    selectable_column
    id_column
    column :kinds
    column :platform_id
    column :influence_coefficient
    actions
  end

  filter :kinds
  filter :platform_id
  filter :influence_coefficient
  

  form do |f|
    f.inputs do
      f.input :platform_id
      f.input :kinds
      f.input :influence_coefficient

    end
    f.actions
  end
end
