require 'tempfile'

class CheckRunner
  attr_accessor :host

  def self.run(project_id, host_id)
    project = Project.find(project_id)
    host = project.hosts.find(host_id)
    @runner = new(host)
  end

  def initialize(host)
    self.host = host
  end

  def execute
    write_tempfile do |file|
      result = `bundle exec cucumber --format json --require features #{file.path}`
      host.checks.create(result: result)
    end
  end

  private

  def write_tempfile
    file = Tempfile.new(Time.now.to_i.to_s)
    file.write "Feature: #{Time.now.to_i.to_s}\n"

    host.scripts.each do |script|
      file.write "Scenario: #{script.title}\n"
      file.write "  Given I am on \"#{host.address}\"\n"
      file.write script.steps + "\n"
    end

    file.close
    yield file
    file.unlink
  end
end

