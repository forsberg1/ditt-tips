ActiveAdmin.register Identity do
index do
    column :name
    column :email
    column "Created at",    :created_at
    column "Logged in Last", :updated_at
    default_actions
  end
end
