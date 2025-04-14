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
  desc 'sbomqs quality score for sboms'
  homepage 'https://github.com/interlynk-io/sbomqs'
  version 'v1.0.4'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.4/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 'ca20055b1d9e111a2ae4e3ddc6390cc936ddc9d5b9d36b5aa7a401c8b935d386'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.4/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 'f20d3c22cc85c461bbd9932dc15002bc866657067925754c56b546c40661638a'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.4/sbomqs-linux-amd64', using: :nounzip
      sha256 'eb0c8fd900d49e0522d23536d8df02d500b76b1a01a904585501c62f8e367957'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.4/sbomqs-linux-arm64', using: :nounzip
      sha256 'a0bb511212005a7b6d100e4f5ac683f355ad55e39eaffd5ea878b5be4f5a82fc'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
