class CreateEvaluationComments < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :evaluation, :float

    create_table :evaluation_comments do |t|
      t.string :title,    null: false
      t.text   :content,  null: false
      t.references :user, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true
      t.timestamps
    end
  end
end
