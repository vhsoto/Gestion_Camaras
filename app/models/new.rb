class New < ActiveRecord::Base
  belongs_to :newable, polymorphic: true
end
