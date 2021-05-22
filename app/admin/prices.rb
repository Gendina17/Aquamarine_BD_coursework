ActiveAdmin.register Price do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :advertesiment_kind_id, :influencer_id, :price, :discount, :coefficient
  #
  # or
  #
  # permit_params do
  #   permitted = [:advertesiment_kind_id, :influencer_id, :price, :discount, :coefficient]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
   permit_params :advertesiment_kind_id, :influencer_id, :price, :discount, :coefficient

  index do
    selectable_column
    id_column
    column :advertesiment_kind_id
    column :influencer_id
    column :price
    column :discount
    column :coefficient
    actions
  end

  filter :advertesiment_kind_id
  filter :influencer_id
  filter :price
  filter :discount
  filter :coefficient
  

  form do |f|
    f.inputs do
      f.input :advertesiment_kind_id
      f.input :influencer_id
      f.input :price
      f.input :discount
      f.input :coefficient

    end
    f.actions
  end
end
