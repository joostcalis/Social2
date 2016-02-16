class Friendrequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend

  def self.pending
    where(status: "Pending")
  end
end
