# item class
class Item

  #accessor is used to write and read instance variable
  attr_accessor :name, :price, :sales_tax, :import_tax

    def initialize(name, price, sales_tax, import_tax) #local variables
    #you are passing on the values of the local variables to the instance variable
    @name = name
    @price = price
    @sales_tax = sales_tax
    @import_tax = import_tax
    end


    def tax
    sales_tax = 0.10
    import_tax = 0.05

      if @sales_tax == true && @import_tax == true
        @price * (sales_tax + import_tax)
      elsif @sales_tax == true && @import_tax == false
        @price + sales_tax
      elsif @sales_tax == false && @import_tax == true
        @price + import_tax
      elsif @sales_tax == false && @import_tax == false
        @price.round
      end
    end

    def total
      @price + tax
    end
  end

# item receipt
class Receipt

  attr_reader :items, :sales_tax_total, :total

  def initialize
    @items = []
    @sales_tax_total = 0
    @total = 0
  end

  def add(item)
    if item.is_a?(Item)
      @items << item
      @sales_tax_total += item.tax
      @total += item.total
    else
      "N/A class Item"
    end
  end

  def printout
  items.each do |item|
    p "#{item.name}: #{(item.price).round(2)}"
  end
    p "Sales Tax: #{(sales_tax_total).round(2)}"
    p "Total: #{(total).round(2)}"
end
end

book = Item.new("book", 12.49, false, false )
cd = Item.new("cd", 14.99, true, false)
chocolate_bar = Item.new("chocolate bar", 0.85, false, false)
box_of_chocolates = Item.new("imported box of chocolate", 10.00, false, true)
imported_perfume = Item.new("imported bottle of perfume", 47.50, true, true)
perfume = Item.new("bottle of perfume", 20.89, true, false)
headache_pills = Item.new("packet of headache pills", 9.75, false, false)

receipt1 = Receipt.new
receipt1.add(book)
receipt1.add(cd)
receipt1.add(chocolate_bar)
receipt1.printout

receipt2 = Receipt.new
receipt2.add(box_of_chocolates)
receipt2.add(imported_perfume)
receipt2.printout

receipt3 = Receipt.new
receipt3.add(perfume)
receipt3.add(box_of_chocolates)
receipt3.add(imported_perfume)
receipt3.add(headache_pills)
receipt3.printout
