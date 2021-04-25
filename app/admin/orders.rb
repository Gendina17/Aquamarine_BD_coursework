ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :staff_id, :company_id, :advertesiment_kind_id, :product
  #
  # or
  #
  # permit_params do
  #   permitted = [:staff_id, :company_id, :advertesiment_kind_id, :product]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :staff_id, :company_id, :advertesiment_kind_id, :product, :type_product, :date_order
  index do
    selectable_column
    id_column
    column :product
    column :company_id
    column :advertesiment_kind_id
    column :staff_id
    column :type_product
    column :date_order
    actions
  end

  filter :product
  filter :company_id
  filter :advertesiment_kind_id
  filter :staff_id
  filter :type_product
  filter :date_order
 

  form do |f|
    f.inputs do
      f.input :staff_id
      f.input :company_id
      f.input :advertesiment_kind_id
      f.input :product
      f.input :type_product
      f.input :date_order
    end
    f.actions
  end

end
