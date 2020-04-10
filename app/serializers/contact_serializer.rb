class ContactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :company, :notes
  belongs_to :user
end
