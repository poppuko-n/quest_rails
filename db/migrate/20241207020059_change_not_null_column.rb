class ChangeNotNullColumn < ActiveRecord::Migration[7.1]
  def change
    # articlesテーブルのtitle, aboutをNOT NULLに変更
    # ref: https://railsguides.jp/active_record_migrations.html#%E3%82%AB%E3%83%A9%E3%83%A0%E3%82%92%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B
    change_column_null :articles, :title, false
    change_column_null :articles, :about, false

    # usersテーブルのname, email, passwordをNOT NULLに変更
    # ref: https://railsguides.jp/active_record_migrations.html#%E3%82%AB%E3%83%A9%E3%83%A0%E3%82%92%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B
    change_column_null :users, :name, false
    change_column_null :users, :email, false
    change_column_null :users, :password, false
  end
end
