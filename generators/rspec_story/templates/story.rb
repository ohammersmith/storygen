require File.dirname(__FILE__) + "/helper"

with_steps_for :<%= story_name %> do
	run File.expand_path(File.dirname(__FILE__) + "/stories/" + File.basename(__FILE__).gsub(".rb",".story")), :type => RailsStory
end
