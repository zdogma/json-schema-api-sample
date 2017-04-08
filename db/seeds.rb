# frozen_string_literal: true

# NOTE: 複数のテーブルを作るタイミングで seed ファイルを分ける
User.create(
  name: '黒子テツヤ',
  gender: User::genders['男性'],
  email: 'sample@gmail.com'
)
