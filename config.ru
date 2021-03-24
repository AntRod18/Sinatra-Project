require "./config/environment"
use Rack::MethodOverride
use UsersController
use PostController
run ApplicationController
