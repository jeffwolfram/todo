class Api::UsersController < ApiController

before_action :authenticated?
# attributes :id, :created_at, :name, :email
def index
  render json: users, each_serializer: UserSerializer
end
def create
  @user = User.new
  @user.name = params[:user][:name]
  @user.email = params[:user][:email]
  @user.password = params[:user][:password]
  # @user.password_confirmation = params[:user][:password_confirmation]
  if @user.save
    render json: @user
  else
    render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
  end
end

end
