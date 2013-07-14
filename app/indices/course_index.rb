ThinkingSphinx::Index.define :course, :with => :active_record do
  indexes title, :sortable => true
  indexes desc
end