class City < ActiveRecord::Base

  def cname
    name.capitalize
  end
end
