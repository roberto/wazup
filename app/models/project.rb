class Project
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String

  embeds_many :hosts
  has_many :scripts

  validates :title, presence: true
end
