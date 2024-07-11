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
  version 'v0.1.6'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.6/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '4326d295feee415ee079d15b3919e6068fe12338318a0b13e5be104974edb3bd'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.6/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '4fa20a74bb603002496f8a40ada3c72de9580169660a1233cf080ec7d5ae4541'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.6/sbomqs-linux-amd64', using: :nounzip
      sha256 'a26b10e21fa201dee68c496c568795d31aa377630419569fc9bc002ed16eeb80'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.6/sbomqs-linux-arm64', using: :nounzip
      sha256 '025141ec0901af2eb9d6dda0c98c2c78d669d1d3de7f0b95635a705ccefca044'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
