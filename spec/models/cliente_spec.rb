require 'spec_helper'

describe Cliente do
 it {should validate_presence_of(:RFC)}
end