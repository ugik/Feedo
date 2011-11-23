class Post < ActiveRecord::Base
  self.abstract_class = true
  set_table_name "posts"
  establish_connection("remote_replica")

  belongs_to :user

  def self.random
	if (c = count) != 0
	    find(:first, :offset =>rand(c))
        end
end

end
