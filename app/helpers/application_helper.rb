module ApplicationHelper
	def google_analytics_js
	  javascript_tag("

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', '#{ENV['GOOGLE_ANALYTICS_ACT']}' ]);
		  _gaq.push(['_trackPageview']);

		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

	  ")
	end

  def backbone_root_path
    current_page?(root_path) ? "" : "/pages/about"
  end
  
  def main_topnav_tab(href, label)

    location_is_home = ( current_page?(root_path) ? true : false)
    href_is_home = ( label == "Home" ? true : false)

    css_class = ""
    if location_is_home && href_is_home
    	css_class = "active"
    elsif !location_is_home && !href_is_home
    	css_class = "active"
    end

    string = "<li class='#{css_class}'><a href='#{href}' >#{label}</a></li>"
    string.html_safe
  end

=begin
  def main_topnav_tab(name, options)
    classes = [options.delete(:class)]
    classes << 'current' if options[:section] && (options.delete(:section).to_a.include?(@section))
    string = "<li class='#{classes.join(' ')}'>" + link_to( content_tag(:span, name), options.delete(:url), options) + "</li>"
    string.html_safe
  end
=end


end
