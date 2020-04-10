class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :company, :due, :applied, :url
  belongs_to :user
end