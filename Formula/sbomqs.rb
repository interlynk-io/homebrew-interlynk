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
    desc "sbomqs provides quality metrics for SBOMs"
    homepage "https://github.com/interlynk-io/sbomqs"
    version "0.0.8"
    license "Apache-2.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.8/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "880d3fc7a4fdfa3be7721c4ddf3c82aefcc4c91ce5c7b74f7cd622746aae856e"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.8/sbomqs-linux-amd64", :using => :nounzip
            sha256 "3d17dfa903172adb65e980518ec7aaca33806e6d0fbc129afddda7225eedf165"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 
