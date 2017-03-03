describe file('/etc/hypriot_release') do
  it { should_not be_file }
end

describe file('/etc/os-release') do
  it { should be_file }
  it { should be_owned_by 'root' }
  its(:content) { should contain /ID=debian/ }
  its(:content) { should match /HYPRIOT_OS="HypriotOS\/arm64"/ }
  its(:content) { should match /HYPRIOT_OS_VERSION="v1.1.1"/ }
  its(:content) { should match /HYPRIOT_DEVICE="ODROID C2"/ }
  its(:content) { should match /HYPRIOT_IMAGE_VERSION=/ }
end

describe file('/boot/os-release') do
  it { should be_file }
  it { should be_owned_by 'root' }
  its(:content) { should contain /ID=debian/ }
  its(:content) { should match /HYPRIOT_OS="HypriotOS\/arm64"/ }
  its(:content) { should match /HYPRIOT_OS_VERSION="v1.1.1"/ }
  its(:content) { should match /HYPRIOT_DEVICE="ODROID C2"/ }
  its(:content) { should match /HYPRIOT_IMAGE_VERSION=/ }
end
