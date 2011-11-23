class Post < ActiveRecord::Base
  self.abstract_class = true
  set_table_name "posts"
  establish_connection(
    :adapter => "mysql2",
    :host => "production-ro.ct1vjcyxovqq.us-east-1.rds.amazonaws.com",
    :username => "gynxpFLh7",
    :password => "MLPTFchgCvBmvWEx",
    :database => "FRONTEND",
    :encoding => "utf8",
    :reconnect => "false",
    :pool => "5"
)

  belongs_to :user

  def self.random
	if (c = count) != 0
	    find(:first, :offset =>rand(c))
        end
end

end
