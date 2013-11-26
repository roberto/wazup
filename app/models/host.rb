class Host
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :auto, type: Boolean, default: false

  embedded_in :project
  embeds_many :checks

  def scripts
    project.scripts
  end

  def current_state
    checks.last.state if checks.present?
  end

  validates :address, presence: true
end
