require 'rails_helper'

RSpec.describe 'ログインの機能チェック', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context 'ログインが成功する場合' do
    it 'データベースにあるユーザー情報とログイン情報が合えばログインできる' do
      visit root_path
      expect(page).to have_content('ログイン')
      visit new_user_session_path
      fill_in 'Nickname', with: @user.nickname
      fill_in 'Encrypted_password', with: @user.encrypted_password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      expect(
        find(".user_nav").find("span").hover
        ).to have_content('ログアウト')
      expect(page).to have_no_content('新規登録')
      expect(page).to have_no_content('ログイン')
    end
  end
  context 'ログインが失敗する場合' do
    it 'データベースにあるユーザー情報とログイン情報が合わないとログイン出来ない' do
      visit root_path
　　　　　　expect(page).to have_content('ログイン')
　　　　　　visit new_user_session_path
　　　　 　fill_in 'Nickname', with: ""
　　　　　 fill_in 'Encrypted_password', with: ""
　　　　　　find('input[name="commit"]').click
　　　　　　expect(current_path).to eq new_user_session_path
    end
  end
end