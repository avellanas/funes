class Issue < ActiveRecord::Base
  self.table_name = "issue"
  alias_attribute :color_scheme_id, 'color-scheme-id'
end
