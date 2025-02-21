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
    version "v0.0.2"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.2/sbommv-darwin-amd64",
            using: :nounzip
        sha256 "59fb264afd9d789323d934ecca696f6928b746ad62e209531b89cea6d62c815b"
  
        def install
          bin.install "sbommv-darwin-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.2/sbommv-darwin-arm64",
            using: :nounzip
        sha256 "62d988c50da07d88fb78f2450cf4a6b2283380b3f97304fe55853975ea4217fa"
  
        def install
          bin.install "sbommv-darwin-arm64" => "sbommv"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.2/sbommv-linux-amd64", using: :nounzip
        sha256 "50aabf2a0afdbfffb83eb9531214f912acd03bfdb6ac4d538a96368dd6923a7d"
  
        def install
          bin.install "sbommv-linux-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.2/sbommv-linux-arm64", using: :nounzip
        sha256 "fb7e87da2852da11a13d46b3221e3ee3e951e83b0473438dadfb77d2a2964bc2"
  
        def install
          bin.install "sbommv-linux-arm64" => "sbommv"
        end
      end
    end
  
    test do
      system "#{bin}/sbommv", "version"
    end
  end
  