# アプリケーションのデプロイ
role :app, %w{ app@mt-takao.top }
# db関連のデプロイ(migrateとか)
role :db,  %w{ app@mt-takao.top }
# アセットプリコンパイルとか
role :web,  %w{ app@mt-takao.top }
