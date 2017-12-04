require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def initialize
  end

  def self.table_name
     self.to_s.downcase.pluralize
  end

  def column_names
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

end
