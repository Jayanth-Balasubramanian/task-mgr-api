require 'rails_helper'
require 'spec_helper'
RSpec.describe Todo, type: :model do

  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:created_by) }
end
