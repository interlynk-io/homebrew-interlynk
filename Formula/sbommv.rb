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
    version "v0.0.1"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.1/sbommv-darwin-amd64",
            using: :nounzip
        sha256 "<SHA256_sbommv-darwin-amd64>"
  
        def install
          bin.install "sbommv-darwin-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.1/sbommv-darwin-arm64",
            using: :nounzip
        sha256 "<SHA256_sbommv-darwin-arm64>"
  
        def install
          bin.install "sbommv-darwin-arm64" => "sbommv"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.1/sbommv-linux-amd64", using: :nounzip
        sha256 "<SHA256_sbommv-linux-amd64>"
  
        def install
          bin.install "sbommv-linux-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.1/sbommv-linux-arm64", using: :nounzip
        sha256 "<SHA256__sbommv-linux-arm64>"
  
        def install
          bin.install "sbommv-linux-arm64" => "sbommv"
        end
      end
    end
  
    test do
      system "#{bin}/sbommv", "version"
    end
  end
  