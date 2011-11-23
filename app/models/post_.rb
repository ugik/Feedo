class Post < ActiveRecord::Base
  self.abstract_class = true
  set_table_name "posts"
  scope :image, where('photo_file_size>0')

  establish_connection(
    :adapter => "mysql2",
    :host => "production-ro.ct1vjcyxovqq.us-east-1.rds.amazonaws.com",
    :username => "gynxpFLh7",
    :password => "MLPTFchgCvBmvWEx",
    :database => "FRONTEND",
    :encoding => "utf8",
    :reconnect => "false",
    :pool => "5" )

  belongs_to :user

  def random
	if (c = count) != 0
	    find(:first, :offset =>rand(c))
        end
  end

  def random_image
	if (c = image.count) != 0
	    image.find(:first, :offset =>rand(c))
        end
  end

end
