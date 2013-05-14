class Project < ActiveRecord::Base
  def pledging_expired?
    pledging_ends_on < Date.today
  end

  def self.pledging_ended
    where("pledging_ends_on >= ?", Time.now)
  end
end
