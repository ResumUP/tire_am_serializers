# Active Model Serializers + Tire (Beta)

The easy way to add [Active Model Serializers](https://github.com/rails-api/active_model_serializers) to your [Tire](https://github.com/karmi/tire/) (client for the Elasticsearch search engine) results.

## Installation

Drop this line to your application's Gemfile:
```ruby
gem 'tire-am_serializers'
```

## Usage

Same as [Active Model Serializers](https://github.com/rails-api/active_model_serializers):
```ruby
render json: User.search(...)
```

There is only one thing, Rails will look for `TireUserSeralizer` by default. If class doesn't exist, it will try to find  `UserSerailizer`. If no Serilaizers present for this model, it will use default behaviour of `to_json`.

If you want to get old behaviour from Tire:
```ruby
render json: Vacancy.search("*").to_json
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
