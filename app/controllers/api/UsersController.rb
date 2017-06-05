class Api::UsersController < ApplicationController

before_action :authenticated?
attributes :id, :created_at, :name, :email
def index
  @users = User.all
end

end
