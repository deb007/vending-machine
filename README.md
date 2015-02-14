#Vending Machine

A simple vending machine in Ruby.

##The Task

Design a Vending Machine, which can accept different coins, deliver different products.

##Assumptions
- Once a product is selected and the appropriate amount of money is inserted, the machine should return that product. 
- It should also return change if too much money is provided or 
- ask for more money if there is not enough. 
- The machine should take an initial dump of products and change with denominations 50p, Re1, Rs2, Rs5, Rs10. 
- There should also be a way of reloading both products and change at a later point. 
- The machine needs to keep track of the products and money that it contains.

##Technologies Used

* Ruby
* RSpec

##How To Run

```
git clone https://github.com/deb007/vending-machine
cd vending-machine
irb
```
```ruby
require './lib/vending_machine'
```

The customer is initialized with money, in the form `{denomination_in_coins: frequency}`. The vending machine is initialized with an array of products and money in the aforementioned form. Products are initialized with a name and a price in coins.

```ruby
customer = Customer.new({200 => 1, 100 => 1})
customer.wallet

vending_machine = VendingMachine.new [Product.new("Potato Chips", 250)], {50 => 1}

customer.buy product: "Potato Chips", at: vending_machine, with: customer.wallet

#=> You have inserted Rs3.00
#=> Your change is Rs0.50
```

The customer's 'bag' now has the product:

```ruby
customer.bag
#=> [#<Product:0x007fad75c5bf28 @name="Potato Chips", @price=250>] 
```

The vending machine should have Rs2, Rs1 and no longer have 50p. Meanwhile, the customer should have the 50p and nothing else:

```ruby
vending_machine.total_money
#=> {50=>0, 200=>1, 100=>1} 

customer.wallet
#=> {50=>1, 200=> 0, 100=> 0}

```

And its list of products should be empty:

```ruby
vending_machine.products
#=> []
```

When insufficient money is paid, the vending machine prints to the console: `You have not inserted enough money`.

When the vending machine's products and change are empty, a maintenance man is in charge of replenishing them.

```ruby
maintenance_man = MaintenanceMan.new vending_machine
maintenance_man.stock_vending_machine [Product.new("Chocolate", 50), Product.new("Water", 100)]

vending_machine.products
#=> [#<Product:0x007f993ac8f020 @name="Chocolate", @price=50>, #<Product:0x007f993ac8ef80 @name="Water", @price=100>]

maintenance_man.refill_coin_box {50 => 1, 100 => 1, 200 => 1}
vending_machine.total_money
#=> {50=>1, 200=>2, 100=>2} 
```

##How To Run Tests

```
rspec 
```



