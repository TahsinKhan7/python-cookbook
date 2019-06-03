# InSpec test for recipe python_cookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe package ('python') do
  it { should be_installed }
end

describe pip('Flask') do
  it { should be_installed }
  its('version') { match '0.10.1' }
end

describe pip('Flask-SSLify') do
  it { should be_installed }
  its('version') { match '0.1.4' }
end

describe pip('requests') do
  it { should be_installed }
  its('version') { match '2.3.0' }
end

describe pip('rauth') do
  it { should be_installed }
  its('version') { match '0.7.0' }
end

describe pip('gnureadline') do
  it { should be_installed }
  its('version') { match '6.3.8' }
end

describe pip('MarkupSafe') do
  it { should be_installed }
  its('version') { match '0.23' }
end

describe pip('Jinja2') do
  it { should be_installed }
  its('version') { match '2.7.3' }
end

describe pip('wsgiref') do
  it { should be_installed }
  its('version') { match '0.1.2' }
end

describe pip('Werkzeug') do
  it { should be_installed }
  its('version') { match '0.9.6' }
end

describe pip('itsdangerous') do
  it { should be_installed }
  its('version') { match '0.24' }
end

describe pip('gunicorn') do
  it { should be_installed }
  its('version') { match '18.0' }
end
