class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
    #t.column :id,
    t.column :comment_text,    :string
    t.column :photo_id,        :int
    t.column :user_id,         :int
    t.column :date_time,       :datetime
    t.timestamps

    end
  end
end
