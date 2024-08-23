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
  version 'v0.1.9'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.9/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '60e413bcc5f2a3d5a4fb8b1629d5a74926427c5f36602b2048edc1fe8f587842'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.9/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '5fdeb64ec264646596110f66d3a07709ad116323171a06887525655e77c6fcc4'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.9/sbomqs-linux-amd64', using: :nounzip
      sha256 '758b6fba53aa919f70488b7603768e7d441744a7f981350e3a590ca9f1183368'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.9/sbomqs-linux-arm64', using: :nounzip
      sha256 '14b8383a5778492c9d86e47dacd64d129d03eebd0eaeb6b8e59265c85e5f7c27`

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
