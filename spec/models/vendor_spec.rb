require 'spec_helper'
require 'rails_helper'

describe Vendor, type: :model do
  it { should have_valid(:email).when('email@test.com') }
  it { should_not have_valid(:email).when(nil, '') }

  it { should have_valid(:first_name).when('Joe') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Tester') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:phone_number).when(555-555-5555) }
  it { should_not have_valid(:phone_number).when(nil, '') }

  it { should have_valid(:city).when('Philadelphia') }
  it { should_not have_valid(:city).when(nil, '') }

  it { should have_valid(:food_truck_name).when('Wok n Roll') }
  it { should_not have_valid(:food_truck_name).when(nil, '') }

  it { should have_valid(:url).when('www.phillyphoodtruck') }
  it { should_not have_valid(:url).when(nil, '') }

  it { should have_valid(:location).when('123 Walnut St') }
  it { should_not have_valid(:location).when(nil, '') }

  it { should have_valid(:description).when('Asian fusion truck specializing in stir-fry') }
  it { should_not have_valid(:description).when(nil, '') }
end
