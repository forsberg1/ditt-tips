  ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.
  #section "Recent Tips", :priority => 1


 ActiveAdmin::Dashboards.build do
  section "Dom 10 Senaste medlemmarna (facebook)" do
    table_for User.order("created_at desc").limit(10) do
      column :name do |user|
        link_to user.name, [:admin, user]
      end
      column "Skapad den ", :created_at
      column "Senaste inloggad", :updated_at
    end
    strong { link_to "Visa alla facebook medlemmar", admin_users_path }
  end
end

ActiveAdmin::Dashboards.build do
  section "Dom 10 Senaste medlemmarna (internt)" do
    table_for Identity.order("created_at desc").limit(10) do
      column :email do |identity|
        link_to identity.email, [:admin, identity]
      end
      column "Skapad den ", :created_at
      column "Senaste inloggad", :updated_at
    end
    strong { link_to "Visa alla interna medlemmar", admin_identities_path }
  end
end

  ActiveAdmin::Dashboards.build do
  section "Dom 10 Senaste Tipsen" do
    table_for Tip.order("created_at desc").limit(10) do
      column :name do |tip|
        link_to tip.title, [:admin, tip]
      end
      column :created_at
    end
    strong { link_to "Visa alla tips", admin_tips_path }
  end
end

end
