require 'aruba/platforms/unix_platform'
require 'ffi'

module Aruba
  # This abstracts OS-specific things
  module Platforms
    # WARNING:
    # All methods found here are not considered part of the public API of aruba.
    #
    # Those methods can be changed at any time in the feature or removed without
    # any further notice.
    #
    # This includes all methods for the Windows platform
    class WindowsPlatform < UnixPlatform
      def self.match?
        FFI::Platform.windows?
      end
    end
  end
end
