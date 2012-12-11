require 'version'

module CacheableAttr
  is_versioned
  
  def cacheable_attr(*attributes)
    opts = { ttl: 60 }
    opts = opts.merge(attributes.pop) if attributes.last.is_a?(Hash)
    
    attributes.each do |attribute|
      define_method attribute do
        if !instance_variable_defined?("@#{attribute}_updated_at") || (opts[:ttl] != nil && Time.now >= instance_variable_get("@#{attribute}_updated_at") + opts[:ttl])
          value = send("#{attribute}_uncached")
          instance_variable_set("@#{attribute}", value)
          instance_variable_set("@#{attribute}_updated_at", Time.now)
        end
        
        instance_variable_get("@#{attribute}")
      end
    end
  end
  
end
