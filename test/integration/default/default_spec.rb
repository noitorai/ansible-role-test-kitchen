# encoding: utf-8
# author: ISHII Masaru

title 'test of ansible role test-kitchen'

control 'dependency-1.0' do
  impact 1.0
  title 'check if dependent packages are installed'
  desc '依存するパッケージがインストールされているか？'
  tag ''

  ['@Development tools', 'centos-release-scl'].each |p| do
    describe package(p) do
      it { should be_installed }
    end
  end

end
