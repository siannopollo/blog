module Jekyll
  class CreditedImageTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      
      parts = markup.to_s.split ' '
      @src = parts.shift
      @credit, @caption = parts.join(' ').split ' | '
    end
    
    def render(context)
      root_url = context.registers[:site].config['root'].sub(/\/$/, '')
      @src = "#{root_url}/#{@src}" unless @src =~ /\Ahttp/
      
      caption = %{<div class="caption">#{@caption}</div>} if @caption && !@caption.empty?
      
      %{<div class="credited-image">
        <div class="credited-image-inner">
          <img src="#{@src}">
          <div class="credit">credit: #{@credit}</div>
          #{caption}
        </div>
      </div>}
    end
  end
end

Liquid::Template.register_tag 'credited_image', Jekyll::CreditedImageTag
