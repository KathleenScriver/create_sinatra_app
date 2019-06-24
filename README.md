# Steps to create Sinatra App

1. Setup project files
```
  project_name
    |_ app
        |_ controllers
        |_ models
        |_ views
    |_ config
      |_ environment.rb
    |_ config.ru
```

2. Setup Gemfile
  - `bundle init`
  - `bundle add sinatra shotgun require_all pry`


3. Setup Environment
  - In `config.ru`
    ```
    require_relative 'config/environment

    run ApplicationController
    ```
  - In `config/environment.rb`

    ```  
      ENV['SINATRA_ENV'] ||= "development"
      ENV['RACK_ENV'] ||= "development"

      require 'bundler/setup'
      Bundler.require(:default, ENV['SINATRA_ENV'])

      require_all 'app'

4. Setup Controller and index route
  - In `app/controllers/application_controller.rb`
  ```
  class ApplicationController < Sinatra::Base
        get '/' do
          "Hello World"
        end
  end
  ```

5. Create Models and Views and start building!
