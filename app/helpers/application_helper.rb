module ApplicationHelper
	def titre
		base_titre = "Sample App"
		if @titre.nil?
			base_titre
		else
		"#{base_titre} - #{@titre}"
		end
	end

	def logo
	logo = image_tag("logo.png", :alt => "Application Exemple", :class => "round")
	end
end
