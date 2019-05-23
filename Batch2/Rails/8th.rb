heroku deployment 
Integrating javascript libraries like vue
  gem 'webpacker'
  gem 'foreman'
  rails webpacker:install
  rails webpacker:install:vue
  yarn install
  // app/javascript/packs/application.js

  import Vue from 'vue/dist/vue.esm'
  import App from '../components/app.vue'

  document.addEventListener('DOMContentLoaded', () => {
    document.body.appendChild(document.createElement('app'))
    const app = new Vue({
      el: 'app',
      template: '<App/>',
      components: { App }
    })

    console.log(app)
  })
//later stage 

  import Vue from 'vue/dist/vue.esm'
  import App from '../app.vue'
  import Router from 'vue-router'
  import Signin from '../components/Signin.vue'
  Vue.use(Router)

  const NotFound = { template: '<p>Page not found</p>' }

  const routes = {
    '/': App
  }

  document.addEventListener('DOMContentLoaded', () => {
    document.body.appendChild(document.createElement('app'))
    const app = new Vue({
      el: 'app',
      data: {
        currentRoute: window.location.pathname
      },
      computed: {
        ViewComponent () {
          return routes[this.currentRoute] || NotFound
        }
      },
      render (h) { return h(this.ViewComponent) }	
    })

    console.log(app)
  })

  # Procfile
  backend: bin/rails s -p 3000
  frontend: bin/webpack-dev-server

  foreman start 
  <%= javascript_pack_tag 'application' %>

   
Active jobs 
  GuestsCleanupJob.set(wait_until: Date.tomorrow.noon).perform_later(guest)
  GuestsCleanupJob.set(wait: 1.week).perform_later(guest)
  config.active_job.queue_adapter = :sidekiq
  self.queue_adapter = :resque
  queue_as :urgent
  queue_as :low_priority
  queue_as :default
  Rails by default comes with an asynchronous queuing implementation that runs jobs with an in-process thread pool. 
  Jobs will run asynchronously, but any jobs in the queue will be dropped upon restart.
  Available callbacks
    before_enqueue
    around_enqueue
    after_enqueue
    before_perform
    around_perform
    after_perform

    Exception handelling 
    rescue_from(ActiveRecord::RecordNotFound) do |exception|
      # Do something with the exception
    end

    retry_on CustomAppException # defaults to 3s wait, 5 attempts
    discard_on ActiveJob::DeserializationError

    
Caching
  page caching
  action caching
  fragment caching
    gem:
      actionpack-page_caching
      actionpack-action_caching
      caches_page :index
  config.action_controller.perform_caching = true    
  
  
Puma web server
  workers
  thread 
  

Thread in rails 
  
I18n

Day - 9
  Ruby's Test Framework 
  From Minitest to Rails Testing 
  Functional Tests
  Rspec (matchers, assertions, mocks, factory-girl)
  Creating your Own gem
  How to debug/patch a gem



 

  
Day - 10
 
    Module - prepped extended, included , inherited
    Metaprogramming


