require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject {build(:comment)}

  # JEWEL_ID
  it { is_expected.to have_db_column(:jewel_id) }
  it { is_expected.to validate_presence_of(:jewel_id) }

  # USER_ID
  it { is_expected.to have_db_column(:user_id) }
  it { is_expected.to validate_presence_of(:user_id) }

  # CONTENT
  it { is_expected.to have_db_column(:content) }
  it { is_expected.to validate_presence_of(:content) }
end
