require 'spec_helper'

describe Cliente do
 it {should validate_presence_of(:rfc)}
 it {should validate_presence_of(:razon_social)}
 it {should validate_presence_of(:direccion)}
 it {should validate_presence_of(:email)}
 it {should allow_value('yo@mail.com').for(:email)}
 it {should_not allow_value('yo').for(:email)}
 it {should validate_presence_of(:nombre_contacto)}
end
