class Equipment < ActiveRecord::Base

  attr_accessible :assetprofile, :barcode, :building, :components, :department, :floor, :instructions, :manufacturer, :model, :partnumber, :partof, :pmschedule, :room, :serial, :system, :uniqueid, :url, :warrend, :warrstart



def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    equipment = find_by_id(row["id"]) || new
    equipment.attributes = row.to_hash.slice(*accessible_attributes)
    equipment.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
  when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |equipment|
      csv << equipment.attributes.values_at(*column_names)
    end
  end
end

end
