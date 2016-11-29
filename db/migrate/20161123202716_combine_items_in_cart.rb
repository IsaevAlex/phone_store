class CombineItemsInCart < ActiveRecord::Migration[5.0]
  	def up
	     # замена нескольких записей для одного и того же товара в корзине одной записью
	     Cart.all.each do |cart|
	         # подсчет количества каждого товара в корзине
	         sums = cart.line_items.group(:phone_id).sum(:quantity)
	         sums.each do |phone_id, quantity|
	             if quantity > 1
	             	# удаление отдельных записей
		    		cart.line_items.where(phone_id: phone_id).delete_all
			        # замена одной записью
			        item = cart.line_items.build(phone_id: phone_id)
			        item.quantity = quantity
			        item.save!
		 		end 
			end
		 end
    end

    def down
   		 # разбиение записей с quantity>1 на несколько записей
    	LineItem.where("quantity>1").each do |line_item|
        	# add individual items
        	line_item.quantity.times do
            	LineItem.create cart_id: line_item.cart_id,
                	phone_id: line_item.phone_id, quantity: 1
				end
        		# удаление исходной записи
        	line_item.destroy
    	end
	end
 end
