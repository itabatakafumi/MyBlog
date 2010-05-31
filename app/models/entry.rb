
class Entry < ActiveRecord::Base
  belongs_to :blog

  def before_save
    self.posted_on ||= Date.today
  end
end
