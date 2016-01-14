Rails.application.routes.draw do

  get '/' => 'employees#worker'

  get '/all' => 'employees#every_worker'

end
