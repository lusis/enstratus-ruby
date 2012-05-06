# Where can I use this API?
You should always be able to use this API with the enStratus SaaS platform. You can signup at http://enstratus.com.

# Can I use this with my on-premise install?
Using this API with an on-premise install depends on which release of the on-premise version you are running

# How is the gem versioned?
The gem is versioned based on the API level it supports. The enStratus API is versioned via date (format: `YYYY-MM-DD`). The gem version will be named `YYYYMMDD.patchlevel`.

The intention is that when the API changes in the SaaS, the codebase will be updated, tagged and a new gem pushed. In this way, it should be very easy to track which version of the gem you need.

# What is the current/minimum version supported?
The current version in the SaaS is: `2012-02-29`
The minimum supported version is: `2012-02-29`

# What's with the weird Enumerations and Data Types stuff?
This library is designed to be as easy to maintain as possible. Because of that, it is designed to be built straight from the API documentation itself. This serves several purposes:

- API documentation will be the source of truth as to functionality
- Easy to maintain codebase (possibly even being updated programatically from the API docs itself)
- Easy to test and dead-simple validations

# Other goals
- The library should feel Ruby-ish e.g camel-cased values should be converted to snake where appropriate.
- It should be easy to build abstractions/tooling on top of it (knife plugin and puppet cloud provider are the first targets)
- It should require minimal maintenance
- It can expose inconsitencies/errors in the API documentation(\*)

The library takes inspiration from several places but most notably the API gets its feel from both [http://github.com/fog/fog](fog) and [http://github.com/soveran/ohm](ohm).

I'm amazed by the dirt simple approach that Ohm takes. I dig the feel that fog provides with its collections and syntax.
