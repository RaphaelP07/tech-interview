class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.active(model_alias)
    where("#{model_alias}.active = true")
  end

  def self.not_featured(model_alias)
    where.not("#{model_alias}.featured = true")
  end

  def self.featured(model_alias)
    where("#{model_alias}.featured = true")
  end
end
