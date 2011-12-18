ActiveAdmin.register User do
  index do
    column :provider
    column :name
    column "Created at",    :created_at
    column "Logged in Last", :updated_at
    default_actions
  end
end
