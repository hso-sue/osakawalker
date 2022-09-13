class CreateEvaluationComments < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :evaluation, :float

    create_table :evaluation_comments do |t|
      t.string :title
      t.text   :content
      t.timestamps
    end
  end
end
