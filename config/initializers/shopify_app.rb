ShopifyApp.configure do |config|
  config.application_name = 'testdans'
  config.api_key = '68309d80d2fceccbd60aa146cc7a0116'
  config.secret = 'b62127938912a7be9ad1d93e35d910a8'
  config.scope = 'read_orders, read_products'
  config.embedded_app = true
end
