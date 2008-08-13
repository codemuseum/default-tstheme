class Theme < ActiveRecord::Base
  alias_method :original_to_xml, :to_xml
  include ThriveSmartObjectMethods

  def self.new_default
    new({:urn => 'default'})
  end
end
