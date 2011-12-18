ActiveAdmin.register Tip, as: "Tips" do
  index do
    column :title
    column :text
    column "Created At", :created_at
    default_actions
  end
end
