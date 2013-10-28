class Host
  include Mongoid::Document
  field :name, type: String
  field :address, type: String

  embedded_in :project

  validates :address, presence: true
end
