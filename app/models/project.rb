class Project
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String

  validates :title, presence: true
end
