require 'rails_helper'

RSpec.describe Jewel, type: :model do
  subject { build(:jewel) }

  # NAME
  it { is_expected.to have_db_column(:name) }
  it { is_expected.to validate_presence_of(:name) }

  #DESC
  it { is_expected.to have_db_column(:desc) }
  it { is_expected.to validate_presence_of(:desc) }

  #tags
  it { is_expected.to have_db_column(:tags) }
  it { is_expected.to validate_presence_of(:tags) }

end
