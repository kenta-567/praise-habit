class Contact
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  validates :name, :presence => { :message => '名前を入力してください' }
  validates :email, :presence => { :message => 'メールアドレスを入力してください' }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => '不正なメールアドレスです' }

end
