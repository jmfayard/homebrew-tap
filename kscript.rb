class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/holgerbrandl/kscript"
  url "https://github.com/holgerbrandl/kscript/releases/download/v2.4.4/kscript-2.4.4-bin.zip"
  sha256 "80a5a22c99e52192db397c3d057524df076a7d1741fc8563a372c7e1b4ab0ee2"

  depends_on "kotlin"

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^jarPath=.*/, "jarPath=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
