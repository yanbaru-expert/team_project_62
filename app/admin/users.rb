ActiveAdmin.register User do
  permit_params :email, :encrypted_password, :remember_created_at

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :encrypted_password
      f.input :remember_created_at
    end
    f.actions
  end
end
