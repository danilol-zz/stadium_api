object false
child @user => :resource do
  attributes :email
end
node :links do
  @user.links
end
