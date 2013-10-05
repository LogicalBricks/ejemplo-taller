class Banner < ActiveRecord::Base
  belongs_to :cliente
  validates_presence_of :archivo
  validates_presence_of :url
  validates :cliente, presence: true
end
