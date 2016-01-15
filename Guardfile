clearing :on
notification :off

def run_test(test_path)
  `ruby -I"lib/" #{test_path}`
end

def run_all_tests
  Dir.glob('test/**/*.rb').map { |p| run_test(p) }
end

guard :shell do
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| run_all_tests }
  watch(%r{^test/(.*)\/?test_(.*)\.rb$}) { |m| run_test(m[0]) }
end
