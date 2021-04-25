ActiveAdmin.register InfluencersOrder do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :influenser_id, :order_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:influenser_id, :order_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
   
  permit_params :influencer_id, :order_id

  index do
    selectable_column
    id_column
    column :influencer_id
    column :order_id
    actions
  end

  filter :influencer_id
  filter :order_id

  form do |f|
    f.inputs do
      f.input :influencer_id
      f.input :order_id
    end
    f.actions
  end
end
