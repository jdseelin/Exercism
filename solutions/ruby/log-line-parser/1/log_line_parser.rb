class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':')[-1].strip
  end

  def log_level
    index = @line.index(']')
    @line.slice(1, index - 1).downcase
  end

  def reformat
    level, message = @line.split(':')
    level.gsub!(/[\[\]]/, '').downcase!
    message.strip!
    "#{message} (#{level})"
  end
end
