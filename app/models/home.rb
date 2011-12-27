class Home < ActiveRecord::Base
  @latestfive = Tip.scoped(:limit => 5)
end
