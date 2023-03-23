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
    desc "sbomqs quality score for sboms"
    homepage "https://github.com/interlynk-io/sbomqs"
    version "0.0.11"
    license "Apache-2.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.11/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "b187f00f37e2f0f70ec1a98d74f9fa5a1da8b6a6842aed8a36325d200c73de5b"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.11/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "978e4d6c2f06cd02eb4c9e7a047601fe87872d18b611997df01fd769b7b0ed4d"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.11/sbomqs-linux-amd64", :using => :nounzip
            sha256 "6d6cdfaa234c7ae3bcdf15dac2f30e00fc7b135b14bad01860ee30cff302eb7f"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.11/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "b0b97bf89a0673ae98fada763162976e19c471e87f8a563bd5ed4524b03d932d"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 