class <%= class_name %> < <%= parent_class_name.classify %>
  
  <% attributes.select {|attr| attr.reference? }.each do |attribute| -%>
    belongs_to :<%= attribute.name %>
  <% end -%>
# use the stringex gem to create slug | usually on the title or name attribute
  acts_as_url :name, :url_attribute => :slug, :only_when_blank => true
  def to_param
    "#{id}-#{name.to_url}"
  end
  
  scope :by_recent, :order => 'id desc'

end
