class AvailableCommand < ActiveRecord::Base
  finder :name
  selectable
end
