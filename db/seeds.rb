require "import_csv"

# texts, movies テーブルを再生成（関連付くテーブルを含む）
%w[texts movies].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table_name} RESTART IDENTITY CASCADE")
end

email = "test@example.com"
password = "password"

User.find_or_create_by!(email: email) do |user|
  user.password = password
  puts "ユーザーの初期データインポートに成功しました。"
end

ImportCsv.import_text_data("db/csv_data/text_data.csv")
ImportCsv.import_movie_data("db/csv_data/movie_data.csv")
puts "CSVファイルのインポートに成功しました。"
AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?
