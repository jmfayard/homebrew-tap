class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/holgerbrandl/kscript"
  url "https://github.com/holgerbrandl/kscript/releases/download/v4.0.3/kscript-4.0.3-bin.zip"
  sha256 "e92b000ea13dd48c49329269b025d59c3e0ff507fe3a357fb5af401773b1cdbb"

  depends_on "kotlin"

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^JAR_PATH=.*/, "JAR_PATH=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
