require_relative 'string'
require_relative 'itemcontainer'
require_relative 'cart'
require_relative 'order'
require_relative 'items'
require_relative 'virtual_item'
require_relative 'real_item'


@items = []
@items << RealItem.new( {:price => 110, :weight => 10, :name => 'iPhone'} )
@items << RealItem.new( {:price => 120, :weight => 30, :name => 'iPad'} )
@items << VirtualItem.new( {:price => 500, :weight => 100, :name => 'iMac'} )





