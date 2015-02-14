require 'rspec/core/shared_context'

module MyLetDeclarations
  extend RSpec::Core::SharedContext
  
  let(:chips) {Product.new("Potato Chips", 250)}
  let(:chocolate) { Product.new("Chocolate", 50)}
  let(:products) { [chips, chocolate]}
  let(:change) {
    Hash[{
      50 => 1,
      100 => 1,
      200 => 1,
      500 => 1,
      1000 => 1
    }.sort.reverse]
  }
  let(:customer) { Customer.new change }
  let(:vending_machine) {vending_machine = VendingMachine.new(products, change) }
  let(:coke) {Product.new "coke", 0.5}
  let(:water) {Product.new "water", 0.2}
end


RSpec.configure do |config|

  config.include MyLetDeclarations

  config.before { STDOUT.stub(:puts)}

end
