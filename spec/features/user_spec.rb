# frozen_string_literal: true

require 'rails_helper'

describe 'User system' do
  it 'allows to register a user, log in and calculate', js: true do
    visit root_path
    click_on 'Регистрация'
    fill_in 'Username', with: 'test_user'
    fill_in 'Password', with: 'password'
    click_on 'Create User'
    visit root_path
    expect(User.find_by(username: 'test_user')).not_to be_nil
    fill_in 'number', with: '174'
    click_on 'Отправить на проверку'
    expect(page.body).to include 'Ответ'
  end

end
