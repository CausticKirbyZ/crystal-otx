require "http/client"
require "json"

module OTX 



    class Client 
        property api_key : String = ""

        def initialize()
        end
        def initialize(@api_key)
        end

        # takes a string and returns a JSON::Any of the responce 
        # address must be a valid ipv4 address 
        # section is the seciton of the item. can be anyting in 
        # ["general",reputation,geo,malware,url_list,passive_dns,http_scans ]
        def indicators_ipv4(address : String, section : String = "" ) : JSON::Any?
            context = OpenSSL::SSL::Context::Client.new
            context.verify_mode = OpenSSL::SSL::VerifyMode::NONE
            headers = HTTP::Headers{"X-OTX-API-KEY" => api_key }
            JSON.parse(
                HTTP::Client.get("https://otx.alienvault.com/api/v1/indicator/IPv4/#{address}/#{section}", headers: headers, tls: context ).body 
                )
        end
        # takes a string and returns a JSON::Any of the responce 
        # address must be a valid ipv4 address 
        # section is the seciton of the item. can be anyting in 
        # ["general",reputation,geo,malware,url_list,passive_dns,http_scans ]
        def indicators_domainname(domain_name : String, section : String = "" ) : JSON::Any?
            context = OpenSSL::SSL::Context::Client.new
            context.verify_mode = OpenSSL::SSL::VerifyMode::NONE
            headers = HTTP::Headers{"X-OTX-API-KEY" => api_key }
            JSON.parse(
                HTTP::Client.get("https://otx.alienvault.com/api/v1/indicator/domain/#{domain_name}/#{section}", headers: headers, tls: context ).body 
                )
        end
        # takes a string and returns a JSON::Any of the responce 
        # address must be a valid ipv4 address 
        # section is the seciton of the item. can be anyting in 
        # ["general",reputation,geo,malware,url_list,passive_dns,http_scans ]
        def indicators_hostname(host_name : String, section : String = "" ) : JSON::Any?
            context = OpenSSL::SSL::Context::Client.new
            context.verify_mode = OpenSSL::SSL::VerifyMode::NONE
            headers = HTTP::Headers{"X-OTX-API-KEY" => api_key }
            JSON.parse(
                HTTP::Client.get("https://otx.alienvault.com/api/v1/indicator/hostname/#{host_name}/#{section}", headers: headers, tls: context ).body 
                )
        end

        # hash is the md5 hash of the file
        def indicators_filehash(hash : String, section : String = "" ) : JSON::Any?
            context = OpenSSL::SSL::Context::Client.new
            context.verify_mode = OpenSSL::SSL::VerifyMode::NONE
            headers = HTTP::Headers{"X-OTX-API-KEY" => api_key }
            JSON.parse(
                HTTP::Client.get("https://otx.alienvault.com/api/v1/indicator/file/#{hash}/#{section}",headers: headers, tls: context ).body 
                )
        end 


    end



end
