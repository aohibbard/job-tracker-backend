class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :company, :due, :applied, :url
  belongs_to :user
end