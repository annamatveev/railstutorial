class UserMailerPreview < ActionMailer::Preview

  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/account_activation
  def account_activation

    user = User.find_by(email: "example@railstutorial.org")

    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at
  # http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.find_by(email: "example@railstutorial.org")

    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end
end