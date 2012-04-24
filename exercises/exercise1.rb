# Exercise 1

class PizzaBurger
  def initialize
    @orders = []
  end


  def menu
    while true
      show_menu

      # get the user's repsonse
      item_number = gets[0]

      # shows the appropriate response
      if item_number == "1"
        order_pizza
      elsif item_number == "2"
        order_burger
      elsif item_number == "3"
        show_orders
      elsif item_number == "4"
        cancel_order
      elsif item_number == "0"
        puts "Exit"
        return
      else
        puts "Invalid item, please select again."
      end
    end
  end

  def show_menu
    puts ""
    puts "Welcome to PizzaBurger,"
    puts "What would you like to do?"
    puts
    puts "1. Order a pizza"
    puts "2. Order a burger"
    puts "3. List all orders"
    puts "4. Cancel an order"
    puts "0. Exit"
  end

  def order_pizza
    puts "Ordering a pizza!"
  end

  def order_burger
    puts "Ordering a burger!"
  end

  def order_burger
    puts "The current orders are:"
  end

  def cancel_order
    puts "Which order would you like to cancel?"
  end
end

class PizzaOrder
  attr_accessor :name, :phone, :toppings, :number_of_pizzas
  
  def to_s
    "#{@number_of_pizzas} pizzas with #{@toppings}\n     #{name}, #{phone}"
  end
end

class BurgerOrder
  attr_accessor :name, :phone, :style, :fries

  def to_s
    fries_text = @fries ? "with fries" : "without fries"
    "Burger #{fries_text} (#{@style})\n     #{name}, #{phone}"
  end
end

pizza_burger = PizzaBurger.new
pizza_burger.menu
