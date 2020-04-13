class ContactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :company, :notes
  belongs_to :user
end
