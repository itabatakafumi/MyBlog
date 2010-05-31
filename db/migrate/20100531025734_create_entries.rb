class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.column :title, :string, :null => false # 記事のタイトル
      t.column :body, :text, :null => false # 記事の本文
      t.column :posted_on, :date # 投稿日
      t.column :created_at, :timestamp # 作成タイムタンプ
      t.column :updated_at, :timestamp # 更新タイムスタンプ
      t.column :blog_id, :integer, :null => false # 外部参照キー
    end
  end

  def self.down
    drop_table :entries
  end
end
