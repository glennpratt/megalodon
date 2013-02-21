Gem::Specification.new do |s|
  s.name              = "megalodon"
  s.version           = "0.0.0"
  s.summary           = "Setup a modern PHP development environment on Mac."
  s.homepage          = "http://msonnabaum.github.com/megalodon/"
  s.authors           = `git log --format='%aN' | sort | uniq -c | sort -n -r | awk '{$1=""}1' | sed 's/^ *//'`.split(/\n/)
  s.files             = `git ls-files`.split($\)
  s.executables       = `git ls-files bin | cut -c5-`.split($\)

  s.add_dependency "chef", "~> 10.24.0"
  s.add_dependency "highline", "~> 1.6.9"
end
