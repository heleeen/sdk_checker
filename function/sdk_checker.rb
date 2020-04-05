def exec(event:, context:)
  # https://stackoverflow.com/questions/5177634/list-of-installed-gems
  def local_gems
    Gem::Specification.sort_by{ |g| [g.name.downcase, g.version] }.group_by{ |g| g.name }
  end


  def local_gems
    Gem::Specification.sort_by{ |g| [g.name.downcase, g.version] }.group_by{ |g| g.name }
  end

  puts local_gems.map{ |name, specs|
    [
      name,
      specs.map{ |spec| spec.version.to_s }.join(',')
    ].join(' ')
  }
end
