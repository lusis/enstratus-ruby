# enstratus-ruby
This will soon be the gem to use for interacting with the enStratus API.

## Currently Implemented GET operations (by resource group)

- Admin (all)
- Anayltics (all)
- Finance (all)
- Geography (all)
- Infrastructure (all)
- Automation (deployment, tier)

## status - 2012/05/06
I'm currently adding read-only support for all resources. The actual structure of a resource class may change.

**HOWEVER**

If you'd like to test against, your account:


(in an irb/pry session)
```ruby
require 'enstratus'
require 'pp'

Enstratus.configure("/path/to/config.yaml")

Enstratus::Infrastructure::Server.all

# array of Enstratus::Infrastructure::Server objects returned
```

See `lib/enstratus/infrastructure/` or `lib/enstratus/geography` for other resources currently done.

There is currently no error handling in place for calls that require query params. If you get some wonky errors, try

```ruby
Enstratus::Geography::Region.all

# list of known regions returned

Enstratus::Infrastructure::MachineImage.all :regionId => some_region_id_from_above

# list of Machine Images returned
```

Again, currently read-only operations (so any `GET` call documented is implemented but not against all resources.

There's a small sample program in `examples` that shows what the current API I'm using to validate reads is. Likely to change.
