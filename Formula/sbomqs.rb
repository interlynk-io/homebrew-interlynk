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
  version 'v0.1.8'
  license 'Apache-2.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.8/sbomqs-darwin-amd64',
          using: :nounzip
      sha256 'c0c5cc183a0206e5e38222dad4757fab1ec0ff1f5a1fabd4fd3379818d7f7d10'

      def install
        bin.install 'sbomqs-darwin-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.8/sbomqs-darwin-arm64',
          using: :nounzip
      sha256 '41166ec768c18c4b28d1d3a7a81e515dac7757f4461b90767354c82dbe389e0d'

      def install
        bin.install 'sbomqs-darwin-arm64' => 'sbomqs'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.8/sbomqs-linux-amd64', using: :nounzip
      sha256 'aa0b8b197be44055b86e12804107f83b3d0aa94e848bca0cd4185338004dee0f'

      def install
        bin.install 'sbomqs-linux-amd64' => 'sbomqs'
      end
    end
    if Hardware::CPU.arm?
      url 'https://github.com/interlynk-io/sbomqs/releases/download/v0.1.8/sbomqs-linux-arm64', using: :nounzip
      sha256 '176c4af3395be3016632cef79157b3dfcd8cfb4c87b7d665f5d876a556fd71a3'

      def install
        bin.install 'sbomqs-linux-arm64' => 'sbomqs'
      end
    end
  end

  test do
    system "#{bin}/sbomqs" 'version'
  end
end
