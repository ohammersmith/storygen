class RspecStoryGenerator < Rails::Generator::NamedBase
  attr_reader :story_name


  def initialize(runtime_args, runtime_options = {})
    super

    @story_name = runtime_args.shift
  end

  def manifest
    recorded_manifest = record do |m|
      m.directory File.join("stories", "steps")
      m.directory File.join("stories", "stories")

      # Plain text story template
      m.template 'plain_text_story.txt', File.join('stories/stories', "#{story_name}_story.story")

      # Main story file
      m.template 'story.rb', File.join('stories', "#{story_name}_story.rb")

      # Story steps file
      m.template 'story_steps.rb', File.join('stories', "steps", "#{story_name}_steps.rb")
    end

    recorded_manifest
  end

  protected

  def banner
    "Usage: #{$0} rspec_story [story name]"
  end
end
