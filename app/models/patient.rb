class Patient < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :mrn

  has_many :consults
  def identity
    [first_name, last_name, '-', mrn].join(' ')
  end
end
