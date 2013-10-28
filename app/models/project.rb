class Project
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String

  embeds_many :hosts

  validates :title, presence: true
end
