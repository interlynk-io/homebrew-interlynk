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
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.9/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "312a099c04d4608e1a71140751148c24402ff139f36d19d9a5f964f2d0557158"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.9/sbomqs-linux-amd64", :using => :nounzip
            sha256 "4de75808a9faaa094bc1b52f37971160747bb1e2c9b15944009c48454e2c73aa"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 
