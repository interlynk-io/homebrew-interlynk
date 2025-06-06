# Copyright 2025 Interlynk.io
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Sbomqs < Formula
  desc 'SBOM Assess - Evaluate SBOM quality and compliance'
  homepage 'https://github.com/interlynk-io/sbomqs'
  version 'v1.0.7'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.7/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 'bc83f23ba29e1a97b5e6264bc8fe9251d862ae810e321077193bf278d823546a'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.7/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '2d79598a537355ddff99540fc85c1add3245debd76a581bb64ceffbfcd003b70'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.7/sbomqs-linux-amd64', using: :nounzip
      sha256 '7e5367e7226a996b761f738896a7d9ef774c1e1d058db7b9b5f6cc5b620e3c2c'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.7/sbomqs-linux-arm64', using: :nounzip
      sha256 '094f802c6ce6af3b1d611ac6eb65dbcc2dd88c681b2bd0871e1d7f0dbfe11c5a'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
