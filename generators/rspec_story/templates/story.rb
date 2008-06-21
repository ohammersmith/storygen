require File.dirname(__FILE__) + "/helper"

with_steps_for :<%= story_name %> do
  run File.expand_path(__FILE__).gsub(".rb",""), :type => RailsStory
end
