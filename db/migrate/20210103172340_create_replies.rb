class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|

      t.string :name
      t.string :keyward
      t.string :subject
      t.string :text

      t.timestamps
    end
  end
end
