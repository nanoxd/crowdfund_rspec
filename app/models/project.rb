class Project < ActiveRecord::Base

  validates :name, presence: true
  validates :description, length: { minimum: 40 }
  validates :target_pledge_amount, numericality: { greater_than: 0 }
  validates 

  
  def pledging_expired?
    pledging_ends_on < Date.today
  end

  def self.pledging_ended
    where("pledging_ends_on >= ?", Time.now)
  end
end
