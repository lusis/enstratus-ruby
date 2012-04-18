# Setup

- Copy config-sample.yaml to config.yaml
- Edit config.yaml with your API keys
- Try running `examples/list-servers.rb`

# Notes
The only part of the library that's fleshed out right now is the request signer.
The examples are mainly the way I'm testing each aspect of the API right now.

## Specific example notes
Other than `list-regions`,`list-servers` and `list-clouds`, all the examples require some additional configuration. Take `list-datacenters` for instance:

- The list datacenters call REQUIRES a regionID as a query param
- If you run `list-regions.rb`, you can get a list of regionIds that API key has access to
- replace `@region_id = "11111111"` in `list-datacenters` with the appropriate region
- run `list-datacenters` and you should get the details back for that.


# Creating/Deleting a server
Now to be able to create a server, you'll need three bits of information:

- datacenterId
- machineImageId
- productId

We have a way of getting the datacenterID as described above. Now we need to get the machineImageId.

To get a list of machineImageIds, we HAVE to provide a regionId. We have that from above. So we update `list-images` with the regionId and we get back a list of machine images for that region.

_Note there are bugs in the current release of the API that are fixed in the next release. If you get an auth failure, please retry your request_

To get the list of available product ids, you'll need to run `list-products` with the appropriate regionID (or alternately a machineImageId). Since there's currently a bug with listing by region (you must provide an architecture), we're going to pass in a machineImageId instead.

This will give us a list of valid products for the image we want to use.

Now that you have all that information (datacenterID,machineImageId and productID), you can update create-server and run it. Server creation is an async process. Your response will look something like this:

```json
{"jobs"=>[{"jobId"=>56681, "status"=>"RUNNING"}]}
```

To see the status of all jobs, there's a `list-jobs` script that returns:

```json
{"jobs"=>
  [
   {"startDate"=>"2012-04-18T17:11:34.613+0000",
    "jobId"=>56681,
    "status"=>"RUNNING",
    "description"=>"Launch Server enstratus.rb"}]}
```

When it's finally done, you'll see this:

```json
{"jobs"=>
  [{"message"=>"241542",
    "startDate"=>"2012-04-18T17:11:34.613+0000",
    "jobId"=>56681,
    "status"=>"COMPLETE",
    "description"=>"Launch Server enstratus.rb",
    "endDate"=>"2012-04-18T17:13:16.658+0000"}]}
```

Obviously, we don't want to leave this running so we edit `delete-server` and put in the machine ID. Again, you can call list-servers to get that. Delete calls do not return any content so you'll have to list jobs to see what's up:

```json
{"jobs"=>
  [
   {"startDate"=>"2012-04-18T17:23:54.075+0000",
    "jobId"=>56682,
    "status"=>"RUNNING",
    "description"=>"Terminate 241542"}]}
```

If you call list-servers after the job is finished, the server should be gone!
- 
