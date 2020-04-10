class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :jobs, :contacts
end
