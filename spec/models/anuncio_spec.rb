require 'spec_helper'

describe Anuncio do
  it { should validate_presence_of(:fecha_inicio) }
  it { should validate_presence_of(:fecha_fin) }
end