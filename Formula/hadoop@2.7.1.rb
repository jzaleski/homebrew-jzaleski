class HadoopAT271 < Formula
  desc "Hadoop 2.7.1 - Framework for distributed processing of large data sets"
  homepage "https://hadoop.apache.org/"
  url "http://archive.apache.org/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz"
  sha256 "991dc34ea42a80b236ca46ff5d207107bcc844174df0441777248fdb6d8c9aa0"

  bottle :unneeded
  depends_on  "openjdk@8"
  conflicts_with "yarn", :because => "both install `yarn` binaries"

  def install
    rm_f Dir["bin/*.cmd", "sbin/*.cmd", "libexec/*.cmd", "etc/hadoop/*.cmd"]
    libexec.install %w[bin sbin libexec share etc]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
    sbin.write_exec_script Dir["#{libexec}/sbin/*"]
  end

  test do
    system bin/"hadoop", "fs", "-ls"
  end
end
