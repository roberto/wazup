class Project
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String

  embeds_many :hosts
  has_many :scripts

  def checks
    hosts.collect do |host|
      host.checks
    end.flatten
  end

  validates :title, presence: true
end
