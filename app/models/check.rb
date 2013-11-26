class Check
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :result, type: String

  embedded_in :host

  def state
    @state ||= begin
      if error_messages.blank?
        "passed"
      else
        "failed"
      end
    end
  end

  def error_messages
    @error_messages ||= begin
      verify
    end
  end

  private

  def verify
    Array.new.tap do |error_messages|
      JSON.parse(result).each do |result|
        result["elements"].each do |element|
          element["steps"].each do |step|
            if step["result"]["status"] == 'failed'
              error_messages << step["result"]["error_message"]
            end
          end
        end
      end
    end
  end

end
