# Fix `to_underscore` helper
Currently borking on all caps strings i.e. `subscribedCDN` becomes `subscribed_cd_n` instead of `subscribed_cdn`

# move attributes to elements where appropriate
Need to create a dsl for `elements` similar to attributes with appropriate distinction

# finish wiring up attributes (and elements)
Placeholders exist for handling extended information (mutability, type) but this needs to be fleshed out fully.
Same goes for elements when they come in to play.

# flesh out collections
Shitty array of objects is shitty. Do it right.

# error/exception handling
yeah...could use some

# remainder of CRUD
need to wire up ALL The operations

# tests
I don't always test but when I do....
