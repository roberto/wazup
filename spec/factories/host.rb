FactoryGirl.define do
  factory :host do
    name 'Host A'
    address 'http://a.qa1.exa.mple.com/'

    project { build(:project) } 
  end
end
