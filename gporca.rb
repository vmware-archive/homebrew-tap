class Gporca < Formula
  desc "Modular query optimizer for big data"
  homepage "https://github.com/greenplum-db/gporca"
  url "https://github.com/greenplum-db/gporca/archive/v2.42.0.tar.gz"
  sha256 "6f5400c6d85cb383bfeed8fe134dace81761355b85da5049450984f5655be264"

  depends_on "ccache" => :build # orca build
  depends_on "cmake" => :build # orca build
  depends_on "ninja" => :build # orca build

  depends_on "gp-xerces" => :build # with greenplum-db patch in xml handling

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
  end
end
