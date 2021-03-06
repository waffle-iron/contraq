class Gig < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :start_time, :end_time, :user_id

  def self.permitted_params
    @permitted_params ||= column_names - [:created_at, :updated_at]
  end
end
