module MainHelper
	def nav_menu(*args)
		targets = []
		args.each {|x| targets << x.to_s }
		content_for :navigation do 
			content_tag :ul,  { :class => 'nav-ul'} do 
				targets.reduce('') { |sum, value| 
					sum << content_tag(:li, link_to(value.humanize, value), :class => ('active' if value == @nav_path))
				}.html_safe
			end
		end
	end

	def page_image(image_name = nil)
		provide :page_image do 
			if image_name
				image_tag(image_name.to_s + ".png")
			else
				image_tag "wup-bot.png" 
			end
		end
	end
end