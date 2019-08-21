require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  # NAME

  it { is_expected.to have_db_column(:name) }
  it { is_expected.to validate_presence_of(:name) }

  # password
  it {is_expected.to have_db_column(:password_digest)}
  it {is_expected.to validate_presence_of(:password_digest)}

  # EMAIL
  it { is_expected.to have_db_column(:email) }
  it { is_expected.to validate_presence_of(:email) }

end
 

