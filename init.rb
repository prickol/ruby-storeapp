require_relative 'itemcontainer'
require_relative 'cart'
require_relative 'order'
require_relative 'items'
require_relative 'virtual_item'
require_relative 'real_item'

item1 = VirtualItem.new ( {:price => 10, :weight => 100, :name => 'MacBook Air'})
item2 = RealItem.new ( {:weight => 100, :name => 'MacBook Air'})
item3 = RealItem.new ( {:weight => 100, :name => 'iMac'})

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3
cart.pop
puts cart.items.size


order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3


puts order.items.size