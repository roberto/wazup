class Script
  include Mongoid::Document
  field :title, type: String
  field :steps, type: String

  validates :title, :steps, presence: true
end
