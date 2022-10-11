class Product < ApplicationRecord
    has_many(:lineitems)

    before_destroy :make_sure_no_line_items_in_cart
    
    validates(:name, :description, :image, presence: true)
    validates(:price, numericality: {greater_than_or_equal_to: 0.01})
    validates(:name, uniqueness: true)

    validates(:image, format: {with: %r{\.(gif|jpg|png)\Z}i, message: "Image must be GIF, JPG, or PNG file"})

    def make_sure_no_line_items_in_cart
        if self.lineitems.empty?
            return true
        else
            return false
        end
    end

end
