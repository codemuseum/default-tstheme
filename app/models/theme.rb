class Theme < ActiveRecord::Base
  alias_method :original_to_xml, :to_xml
  include ThriveSmartObjectMethods
  self.caching_default = :forever

  def self.new_default
    new({:urn => 'default'})
  end

  def self.new_default_page
    new({:urn => 'default-page'})
  end
end
