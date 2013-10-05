require 'spec_helper'

describe Ruteador do
  it{ should validate_presence_of(:nombre) }
  it{ should validate_presence_of(:password) }
  it{ should validate_presence_of(:puerto) }
  it{ should validate_numericality_of(:puerto) }
end
