require 'rails_helper'

RSpec.describe Favorite, type: :model do
  subject {build(:favorite)}

  #JEWEL_ID
  it {is_expected.to have_db_column(:jewel_id)}
  it {is_expected.to validate_presence_of(:jewel_id)}

  #User_ID
  it {is_expected.to have_db_column(:user_id)}
  it {is_expected.to validate_presence_of(:user_id)}
end
