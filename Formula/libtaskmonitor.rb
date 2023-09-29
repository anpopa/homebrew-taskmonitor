class Libtaskmonitor < Formula
  desc "TaskMonitor Interface Library"
  homepage "https://gitlab.com/taskmonitor/libtaskmonitor"
  url "https://gitlab.com/taskmonitor/libtaskmonitor/-/archive/v1.1.2/libtaskmonitor-v1.1.2.tar.gz"
  sha256 "a3f909ccb772ad7bcfdbb65302133a17a2108fc1df3fa998e3469b650f819dee"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "pkg-config"
  depends_on "protobuf"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "-C", "build", "install"
  end

  test do
    system "true"
  end
end
