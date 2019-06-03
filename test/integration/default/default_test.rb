# InSpec test for recipe python_cookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/
describe package ('python3') do
  it { should be_installed }
end

describe package ('python-pip') do
  it { should be_installed }
end

describe pip('Flask') do
  it { should be_installed }
end

describe pip('Jinja2') do
  it { should be_installed }
end

describe pip('MarkupSafe') do
  it { should be_installed }
end

describe pip('Werkzeug') do
  it { should be_installed }
end

describe pip('Pip Package gnureadline') do
  it { should be_installed }
end

describe pip('itsdangerous') do
  it { should be_installed }
end

describe pip('Pip Package rauth') do
  it { should be_installed }
end

describe pip('Pip Package requests') do
  it { should be_installed }
end

describe pip('wsgiref') do
  it { should be_installed }
end

describe pip('Pip Package Flask-SSLify') do
  it { should be_installed }
end

describe pip('Pip Package gunicorn') do
  it { should be_installed }
end
