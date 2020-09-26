class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      #t.column :id,
      t.column :user_id,         :int
      t.column :date_time,       :datetime
      t.column :file_name,       :string

      t.timestamps
    end
  end
end
