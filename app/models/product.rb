class Product < ApplicationRecord
   #validates :title, length: { in: 1..100 }
   #validates :description, length: { in: 1..100 }

validate :add_error
  def add_error
    if price.blank?
      errors[:base] << "値段を入力してください"
    end
    if image.blank?
      errors[:base] << "画像URLを入力してください"
    end
    if title.blank?
      errors[:base] << "タイトルを入力してください"
    end
    if description.blank?
      errors[:base] << "説明を入力してください"
    end
    if title.length > 100
      errors[:base] << "タイトルは100文字以内です"
    end
    if description.length > 500
      errors[:base] << "説明は500文字以内です"
    end

  end



  def self.product_search(search)
    if search
      Product.where(['title LIKE ?' , "%#{search}%"])
    else
      Product.all
    end
  end


  def self.shop_search(search)
    if search
      Product.where(['shop LIKE ?' , "%#{search}%"])
    else
      Product.all
    end
  end
end
