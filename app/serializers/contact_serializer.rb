class ContactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :company, :notes, :updated_at
  belongs_to :user
end
