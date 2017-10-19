Rails.configuration.stripe = {
  :publishable_key => 'pk_test_mVkXzyaYh508meV7CnXzLck0',
  :secret_key      => 'sk_test_GdUAk29AYPdka79RLNr2lD4g'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
