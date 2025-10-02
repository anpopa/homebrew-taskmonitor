class Libtaskmonitor < Formula
  desc "TaskMonitor Interface Library"
  homepage "https://gitlab.com/taskmonitor/libtaskmonitor"
  url "https://gitlab.com/taskmonitor/libtaskmonitor/-/archive/v1.1.3/libtaskmonitor-v1.1.3.tar.gz"
  sha256 "e5df22d98d49ed34f6be5ce30ff38b192992ee21dbd0ef05106537d8ec015dc1"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "pkg-config"
  depends_on "protobuf"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--install", "build"
  end

  test do
    system "false"
  end
end
