class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :company, :due, :applied, :url, :updated_at
  belongs_to :user
end