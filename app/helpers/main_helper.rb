module MainHelper
	def nav_menu
		arr = ['Nav 1', 'Nav 2', 'Nav 3']
		content_for :navigation do 
			content_tag :ul,  { :class => 'nav-ul'} do 
				arr.reduce('') { |sum, value| 
					sum << content_tag(:li, value)
				}.html_safe
			end
		end

	end
end
