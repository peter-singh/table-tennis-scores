class MatchProcessor
  def initialize(params)
    @params = params
  end

  def process_match!
    user_1 = find_user(@params[:user_1_email])
    user_2 = find_user(@params[:user_2_email])

    match = Match.new.tap do |match|
      match.user_1 = user_1.id
      match.user_2 = user_2.id
      match.time = @params[:time]
      match.user_1_score = @params[:user_1_score]
      match.user_2_score = @params[:user_2_score]
    end
  end

  private

  def find_user(email)
    user = User.find_by_email(email)

    if user.nil?
      user = create_and_invite_user(email)
      return user
    else
      return user
    end
  end

  def create_and_invite_user(email)
    user = User.new(email: email, password: "1234567")
    user.skip_password_validation
    user.save!
    user
  end
end
