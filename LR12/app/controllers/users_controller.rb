class UsersController < ApplicationController
  def new; end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/explicit/in', success: 'You Signed In Succesfully.'
    else
      redirect_to '/signup', danger: 'The E-Mail or Username is already taken'
    end
  end

  # def results
  #   respond_to do |format|
  #     @result = User.all
  #     format.xml {render xml: JSON.parse(User.all.to_json)}
  #     format.any {render inline: 'Specify format'}
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
