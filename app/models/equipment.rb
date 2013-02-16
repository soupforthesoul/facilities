class Equipment < ActiveRecord::Base
  attr_accessible :assetprofile, :barcode, :building, :components, :department, :floor, :instructions, :manufacturer, :model, :partnumber, :partof, :pmschedule, :room, :serial, :system, :uniqueid, :url, :warrend, :warrstart
end
