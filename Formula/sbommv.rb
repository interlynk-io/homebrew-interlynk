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
    version "v0.0.4"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.4/sbommv-darwin-amd64",
            using: :nounzip
        sha256 "dbbdc6a271ed0b9f9483cf3e952020a7ccd716b21fa00b1e1f83e7332825bd91"
  
        def install
          bin.install "sbommv-darwin-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.4/sbommv-darwin-arm64",
            using: :nounzip
        sha256 "b7e4eff01b84ff1b4f03729a93e253b94a9a438eff87ada20976549ca70931f8"
  
        def install
          bin.install "sbommv-darwin-arm64" => "sbommv"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.4/sbommv-linux-amd64", using: :nounzip
        sha256 "1ec483c785ac31819b60acb2fa4ee152b0b0d4b3059f8126b6e22a457e8e190d"
  
        def install
          bin.install "sbommv-linux-amd64" => "sbommv"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/interlynk-io/sbommv/releases/download/v0.0.4/sbommv-linux-arm64", using: :nounzip
        sha256 "963e1a31b4e32327e7387dad44955949f834b3b90834a40d4ff2d19f0692947a"
  
        def install
          bin.install "sbommv-linux-arm64" => "sbommv"
        end
      end
    end
  
    test do
      system "#{bin}/sbommv", "version"
    end
  end
  