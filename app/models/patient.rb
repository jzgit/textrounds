class Patient < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :mrn

  has_many :consults
  def identity
    [first_name, last_name, '-', mrn].join(' ')
  end
  def name
    [first_name, last_name].join(' ')
  end
end
