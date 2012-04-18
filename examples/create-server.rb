$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), "..", "lib")))
require 'enstratus'
require 'enstratus/configuration'
require 'enstratus/request_signer'
require 'yaml'
require 'base64'
require 'excon'
require 'openssl'
require 'json'
require 'pp'

# You'll need to change these
@machine_image_id = "11111111"
@datacenter_id = "111"

new_server_json=<<-EOJ
{"launch":
  [
    {
      "product":{"productId":"t1.micro"},
      "machineImage":{"machineImageId":#{@machine_image_id}},
      "description":"Created by enstratus.rb",
      "name":"enstratus.rb",
      "dataCenter":{"dataCenterId":#{@datacenter_id}}
    }
  ]
}
EOJ
@config = YAML.load(File.open("../config.yaml", 'r') {|f| f.read})
Enstratus.configure do |config|
  config.access_key = @config['es_access_key']
  config.secret_key = @config['es_secret_key']
end

req = "/api/enstratus/#{@config['es_version']}/infrastructure/Server"
conn = Excon.new "#{@config['es_endpoint']}#{req}"
signature = Enstratus::RequestSigner.new({:method => 'POST', :path => req})
sig = signature.sign

resp = conn.post(:headers => {"User-agent" => 'enstratus.rb', "x-esauth-access" => "#{@config['es_access_key']}", "x-esauth-timestamp" => "#{(Time.now.to_f * 1000).to_i}", "x-esauth-signature" => sig, "x-es-details" => "basic", "Accept" => "application/json"},:body => new_server_json)
pp JSON.parse(resp.body)
