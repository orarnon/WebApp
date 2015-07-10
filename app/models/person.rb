class Person < ActiveRecord::Base
  def self.search(search)
    if search
      where('FirstName LIKE ?', "%#{search}%")
    else
      default_scoped
    end
  end
end
