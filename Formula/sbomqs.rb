# Copyright 2023 Interlynk.io
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
  version 'v0.1.7'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.7/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '95295aea0e84ba83eab80bac6e5d7e0665277ab0b8ddd4789186b77399da38d4'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.7/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '8455c7cd3e651a20b6782a8a720c5da6ac6d06c6e9e017dc1cfade3d69071a9e'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.7/sbomqs-linux-amd64', using: :nounzip
      sha256 '742a3ebdb8618a4d11685e7a5bdf15cc998917c5469ceb25a44c1d5c86e7deaf'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.7/sbomqs-linux-arm64', using: :nounzip
      sha256 'bedd632a822824e08c1ffa6be3800f927b8284044937c3a8c3bbfdb251713a79'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
