require 'spec_helper'

describe Banner do
  it{ should validate_presence_of(:archivo) }
  it{ should validate_presence_of(:url) }
  it{ should validate_presence_of(:cliente) }
end
