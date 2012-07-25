class Singnout < ActiveRecord::Base
  attr_accessible :pdf
  mount_uploader :pdf, Signout_Uploader
end
