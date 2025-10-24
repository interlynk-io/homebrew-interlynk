# Copyright 2025 Interlynk.io
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Sbommv < Formula
    desc "SBOM Transfer Tool - Move SBOMs seamlessly between different systems"
    homepage "https://github.com/interlynk-io/sbommv"
    version "v0.0.10"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.10/sbommv-darwin-amd64",
            using: :nounzip
        sha256 "466f3512e56ba78bddcb3681a32dbe236c652a4774e3d42ff531eefac3d4a492"
  
        def install
          bin.install "sbommv-darwin-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.10/sbommv-darwin-arm64",
            using: :nounzip
        sha256 "d0396368419c43caa9f4fd8b64e71c2526f4480c2171dfe165ff084d2bbdf078"
  
        def install
          bin.install "sbommv-darwin-arm64" => "sbommv"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.10/sbommv-linux-amd64", using: :nounzip
        sha256 "f80e2f8aa66f33385bba584a0ce45329d20b30b540594f86ba5a74c290c4df2c"
  
        def install
          bin.install "sbommv-linux-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.10/sbommv-linux-arm64", using: :nounzip
        sha256 "05d323993ce85bfb05ef37344a0dda31ac5255f7ff8086a258e37f4193e8b8ac"
  
        def install
          bin.install "sbommv-linux-arm64" => "sbommv"
        end
      end
    end
  
    test do
      system "#{bin}/sbommv", "version"
    end
  end
  