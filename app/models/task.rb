class Task < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { maximum: 30 }
    validate :validate_name_not_including_comma
    
    private
    
    def validate_name_not_including_comma
        errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
    end
    
    def self.ransackable_attributes(auth_object = nil)
        %w[name created_at]
    end
    
    def self.ransackable_associations(auth_object = nil)
        []
    end
end
