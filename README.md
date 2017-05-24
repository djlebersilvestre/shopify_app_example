# Shopify App Example

This is a shopify example app based on rails 5 and using shopify's app gem to build the skeleton
The idea is to understand how to create a new app from scratch using the existing docs, and evolve from that, like exploring the APIs.

To start using just jump into project's root directory and run the command below in your terminal:
```bash
./setup.sh
```
This should take care of all dependencies for you ;)

## Observations during this process:

* Initially, I was facing this issue https://github.com/Shopify/partners/issues/3435 on the new partners dashboard
* We should update some docs with the new partners dashboard: https://github.com/shopify/shopify_app , https://vimeo.com/130247240 and https://github.com/Shopify/shopify_app/blob/master/QUICKSTART.md
* I like the docs so far. It seems pretty straightforward using RoR
* The idea of having a Rails skeleton app is great and speedup the entire process
* Aside the Heroku example, we could have a standalone example using your localhost
* In https://github.com/shopify/shopify_app , we have this instruction _To create a development application set the Application Callback URL to_ however, inside partners dashboard the field is named _App URL_
* In https://github.com/shopify/shopify_app , we have this instruction _and the redirect uri to_ however, inside partners dashboard the field is named _Whitelisted redirection URL(s)_
