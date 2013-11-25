class Host
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :auto, type: Boolean, default: false

  embedded_in :project

  validates :address, presence: true
end
