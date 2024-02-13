class Shadered < Formula
  desc ""
  homepage ""
  url "https://github.com/dfranx/SHADERed/archive/refs/tags/v1.5.6.tar.gz"
  sha256 "8d28fbb1676bd5edcf7c614dc7d1d0f862ff5bcdea90fe272b795e14ab90a13b"
  license ""

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "true"
  end
end
