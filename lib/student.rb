require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def initialize
  end

  def self.table_name
     self.to_s.downcase.pluralize
  end

  def self.column_names
    DB[:conn].results_as_hash = true

    sql = "PRAGMA table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    column_names = []

    table_info.each do |column|
    column_names << column["name"]
  end

  column_names.compact
  end

  def attr_accessor
  end

  def table_name_for_insert
  end

  def col_names_for_insert
  end

  def values_for_insert
  end

  def save
  end

  def find_by_name
  end

  def find_by
  end


end
