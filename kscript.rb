class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/holgerbrandl/kscript"
  url "https://github.com/holgerbrandl/kscript/releases/download/v2.2.1/kscript-2.2.1-bin.zip"
  sha256 "8d2f901466e85a1ea207803945d4e8b3277c6e082a707c6b2bf2261d3fd82456"

  depends_on "kotlin"

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^jarPath=.*/, "jarPath=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
