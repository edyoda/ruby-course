class NewsletterJob < ApplicationJob
  queue_as :urgent
  self.queue_adapter = :resque
  rescue_from(ActiveRecord::EmailNotFound) do |exception|
      logic
      # Do something with the exception
  end
  retry_on ActiveRecord::EmailNotFound
  def perform(title)
    Article.where(title: title)
  end
end


# NewsletterJob.perform_later('title')

threads = (1..3).map do | i |
  Thread.new(i) {
    puts 'hello#{i}'
  }
end
