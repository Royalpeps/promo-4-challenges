# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#    $ ruby app.rb


require_relative 'router'

require_relative 'lib/controllers/controller_restaurant'
require_relative 'lib/controllers/controller_employee'
require_relative 'lib/controllers/controller_meal'
require_relative 'lib/controllers/controller_order'

require_relative 'lib/repositories/repository_employee'
require_relative 'lib/repositories/repository_restaurant'
require_relative 'lib/repositories/repository_meal'

require_relative 'lib/models/restaurant'


restaurant = Restaurant.new("Corba Salonu", "San Francisco")
repository_employee = RepositoryEmployee.new
repository_restaurant = RepositoryRestaurant.new
repository_meal = RepositoryMeal.new
repository_order = RepositoryOrder.new

controller_restaurant = ControllerRestaurant.new(restaurant)
controller_employee = ControllerEmployee.new(repository_employee)
controller_customer = ControllerCustomer.new(repository_restaurant)
controller_meal = ControllerMeal.new(repository_meal)
controller_order = ControllerOrder.new(repository_order, controller_employee, controller_customer, controller_meal)


router = Router.new(controller_employee, controller_restaurant, controller_customer, controller_meal, controller_order)

# creer les differents repositories ici
# ainsi que les controllers en faisant les bons require_relative


# router = Router.new(controller)

router.run
