ActiveAdmin.register Tag do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :influencer, :tag
  #
  # or
  #
  # permit_params do
  #   permitted = [:influencer, :tag]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :influencer_id, :tag

  index do
    selectable_column
    id_column
    column :influencer_id
    column :tag   
    actions
  end

  filter :influencer_id
  filter :tag

  form do |f|
    f.inputs do
      f.input :influencer_id
      f.input :tag
    end
    f.actions
  end
end
