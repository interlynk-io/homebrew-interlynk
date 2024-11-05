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
  version 'v0.2.2'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.2/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '9f180f4ac47390813e7ff04bfa24b2bb666e9024df38e1b5854d26c5367e3cba'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.2/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '5c4211d37f1ebd20110e236170f51c47e7cc389d2ce12cca0f7324daa2ee3606'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.2/sbomqs-linux-amd64', using: :nounzip
      sha256 '9f9f104f16e01c5df298505233f226914ff2f675823fee01ec6551e3e9b48dc4'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.2.2/sbomqs-linux-arm64', using: :nounzip
      sha256 '02838a9497de921bd7b0f1fbc8e11fe8738d088a8abac911d9878a825b56b8dd'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
