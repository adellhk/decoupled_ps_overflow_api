![logo](app/assets/images/par-stack.png "Logo")


# PAR - PostgreSQL + Angular JS + Rails  

## Set Up

#### Create a new rails app 

```
$ rails new angular_rails --database=postgresql
```

#### Get the database setup

```
$ cd angular_rails
$ rake db:create
$ rake db:migrate
```

#### Add gems and install them

```
gem 'bower-rails'
gem 'angular-rails-templates'

$bundle install
```

#### initialize Bower 

```
$rails g bower_rails:initialize json

{
    "lib": {
        "name": "bower-rails generated lib assets",
        "dependencies": {
            "angular": "latest",
            "angular-route": "latest"
        }
    },
    ...
}
```

this will generate *bower.json* file which you will edit by adding some dependencies 

#### then run a bower rake task to install all the dependancies

```
$ rake bower:install
```

#### go to app/assets/javascripts/application.js and add the following 

```
//= require turbolinks <--- get rid of this line
//= require angular
//= require angular-route
//= require angular-rails-templates
//= require_tree ../templates
```

#### make folder app/assets/templates/  

#### add following lines in config/routes.rb

```
Rails.application.routes.draw do

    root 'application#index'
    get '*path' => 'application#index'

...
```

### add following lines in app/controllers/application_controller.rb 

```
class ApplicationController < ActionController::Base
    ...
    protect_from_forgery with: :exception
    def index
    end
end
```

#### add following lines in app/views/application/index.html.erb

```
<div ng-view=""></div>
```

#### add following lines in app/views/layouts/application.html.erb 

```
<body ng-app="AngularRails">
    ...
```

#### add following lines in app/assets/javascripts/ng-app/app.js

```
angular.module('AngularRails',['ngRoute','templates']).config(function($routeProvider,$locationProvider){
  $routeProvider.when('/',{
    templateUrl: 'home.html',
    controller: 'HomeCtrl'
  });
  $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
});
```

#### add following lines in app/assets/javascripts/ng-app/controllers/home.js

```
angular.module('AngularRails')
    .controller('HomeCtrl', function ($scope) {
        $scope.things = ['Angular', 'Rails 4.1', 'Working', 'Together!!'];
    });
```

#### add following lines in app/assets/templates/home.html.erb

```
<h1>Set up is Complete</h1>
<ul>
    <li ng-repeat="thing in things">
        {{thing}}
    </li>
</ul>
```
