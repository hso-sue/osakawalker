class CreateEvaluationComments < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluation_comments do |t|
      t.string     :title,   null: false
      t.text       :content
      t.float      :rate,    null: false, default: 0
      t.references :user,    null: false, foreign_key: true
      t.references :shop,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
