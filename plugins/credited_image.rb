module Jekyll
  class CreditedImageTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      
      parts = markup.to_s.split ' '
      @src = parts.shift
      
      credit_parts, caption_parts = [], []
      parts.each do |part|
        if credit_parts.last =~ /"\Z/
          caption_parts << part
        else
          credit_parts << part
        end
      end
      @credit = credit_parts.join(' ').gsub '"', ''
      @caption = caption_parts.join ' '
      @credit, @caption = parts.join(' ').split(' | ')
    end
    
    def render(context)
      root_url = context.registers[:site].config['root'].sub(/\/$/, '')
      src = "#{root_url}/#{@src}"
      
      caption = %{<div class="caption">#{@caption}</div>} unless @caption.empty?
      
      %{<div class="credited-image">
        <div class="credited-image-inner">
          <img src="#{src}">
          <div class="credit">credit: #{@credit}</div>
          #{caption}
        </div>
      </div>}
    end
  end
end

Liquid::Template.register_tag 'credited_image', Jekyll::CreditedImageTag
