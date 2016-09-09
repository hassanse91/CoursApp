class ChangeBodyFormatToText < ActiveRecord::Migration
  def change
  	change_column :cours, :body, :text
  end
end
