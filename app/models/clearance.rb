class Clearance < ActiveRecord::Base
  self.table_name = "clearance"
  
  def id
    self.attributes_before_type_cast['id'].to_i
  end
end
