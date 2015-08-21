class Rental < ActiveRecord::Base

  belongs_to :customer
  belongs_to :car

  def finish
    self.finish_at = Date.today
    self.total_cost = ((self.finish_at-self.start_at)/1.day + 1).to_i
  end

end
