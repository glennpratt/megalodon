require 'formula'

class Megalodon <Formula
  head 'git://github.com/msonnabaum/megalodon.git'
  homepage 'https://github.com/msonnabaum/megalodon'

  def install
    prefix.install Dir['config', 'cookbooks', 'formulas', 'roles']
    bin.install "megalodon"
  end
end
