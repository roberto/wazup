class Script
  include Mongoid::Document
  field :title, type: String
  field :steps, type: String

  belongs_to :project

  validates :title, :steps, presence: true
end
