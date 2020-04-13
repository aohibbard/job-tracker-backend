class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :jobs, :contacts
end
