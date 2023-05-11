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
    version "0.0.16"
    license "Apache-2.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.16/sbomqs-darwin-amd64", :using => :nounzip
            sha256 "4f531bd011c30d1c331d64cd81711e57eac7d2901da4e642f785fcaa6420d301"

            def install
                bin.install "sbomqs-darwin-amd64" => "sbomqs"
            end
        end        
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.16/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "ff58056a99166b3f9d13e0cb6b5bec1407f6770a27e6f9b3908061c0701866da"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    on_linux do 
        if Hardware::CPU.intel?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.16/sbomqs-linux-amd64", :using => :nounzip
            sha256 "f9a48fbac8e990fa40a1a28b8534bf3e0ed67171726a337e013fed3f4cbc84b6"

            def install
                bin.install "sbomqs-linux-amd64" => "sbomqs"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/interlynk-io/sbomqs/releases/download/v0.0.16/sbomqs-darwin-arm64", :using => :nounzip
            sha256 "39b728d131b489c59a1975178ded147b826fbc0e92faad2b63aa767ad34e7220"

            def install
                bin.install "sbomqs-darwin-arm64" => "sbomqs"
            end
        end              
    end

    test do
        system "#{bin}/sbomqs" "version"
    end
end 
