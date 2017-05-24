# Shopify App Example

This is a shopify example app based on Rails 5 and using shopify's app gem to build the skeleton (https://github.com/shopify/shopify_app).

The idea is to understand how to create a new app from scratch using the existing docs, and evolve from that, like exploring the APIs.

To start using just jump into project's root directory and run the command below in your terminal:
```bash
./setup.sh
```
This should take care of all dependencies for you ;)

## Observations during the learning process:

* Initially, I was facing this issue https://github.com/Shopify/partners/issues/3435 on the new partners dashboard. In the end I had to create a new development store through partners dashboard
* Another simple bug I found: https://github.com/Shopify/partners/issues/3488
* This is a good suggestion to get started with API calls using cUrl:
  * Create the development store in partners dashboard
  * Add a couple of products: `https://<my_new_dev_store>.myshopify.com/admin/products`
  * Create a private app to generate the credentials: `https://<my_new_dev_store>.myshopify.com/admin/apps/private`
  * Grab the API key and password
  * Docs on how to make a cUrl call: https://help.shopify.com/api/sdks/shopify-apps/getting-started
  * List the products of your store: `curl -u f8b42bbb841ebe4193cd56d492e5043e:c5f4e41860076d941ce72bef3779a970 https://<my_new_dev_store>.myshopify.com/admin/products.json`
* We should update some docs with the new partners dashboard instructions:
  * https://github.com/shopify/shopify_app
  * https://vimeo.com/130247240
  * https://github.com/Shopify/shopify_app/blob/master/QUICKSTART.md
* IMO the docs are good. It seems pretty straightforward using RoR, but talking to other devs RoR is not the main platform. Most frequent are JS and PHP so we should have something similar for these (Oauth might be tricky)
* The idea of having a Rails skeleton app (https://github.com/shopify/shopify_app) is great and speedup the entire process (we should have for other platforms):
  * We have this instruction `To create a development application set the Application Callback URL to` however, inside partners dashboard the field is named `App URL`
  * We have this instruction `and the redirect_uri to` however, inside partners dashboard the field is named `Whitelisted redirection URL(s)`
  * Since the default is `Embed in Shopify admin` we should give precise instructions to the dev/partner to activate this inside partners dashboard in App Extensions section, otherwise the given example won't work
  * Aside the Heroku example, we could have a standalone example using your localhost (maybe using ngrok?)
  * Another thing regarding `Embed in Shopify admin`, we must ensure the app is exposed in HTTPS. HTTP won't work since the iFrame forces HTTPS (also the config inside partners dashboard should use HTTPS for `App URL` and `Whitelisted redirection URL(s)`)
  * This is a good link https://help.shopify.com/api/sdks/shopify-apps/embedded-app-sdk/getting-started which should be mentioned in many places for a more comprehensive documentation
  * We should make it clear we are using https://github.com/Shopify/shopify_api in https://github.com/shopify/shopify_app so the developer can check all the implemented endpoints/resources available
* We could also mention that if the dev wants to make a cUrl call to the store using the app's credentials, just perform a call like this:
  * `curl -u <app-api-key>:<app-secret> https://<my_new_dev_store>.myshopify.com/admin/products.json`
