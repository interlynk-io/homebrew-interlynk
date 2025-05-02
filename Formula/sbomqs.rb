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
  version 'v1.0.5'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.5/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 '7546fea3964dfd2897fcb4eacaccb310a0a3ead14856b3d7be2c543af80b51f6'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.5/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 'ec44c59891b5f970fae3ffcb0ab176ef6e90dee6635155eaf72918581d9fbc1b'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.5/sbomqs-linux-amd64', using: :nounzip
      sha256 '3b49d7a18bc18137c028cf475ebb7aee2da468c617c081d3c3003ae57f81d4be'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v1.0.5/sbomqs-linux-arm64', using: :nounzip
      sha256 'a68dbed5436b7548f1f36a8adb32ef105c2ef0d3b067ec884b87f0a94d03a440'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
