=begin
                  Arachni
  Copyright (c) 2010-2011 Tasos "Zapotek" Laskos <tasos.laskos@gmail.com>

  This is free software; you can copy and distribute and modify
  this program under the term of the GPL v2.0 License
  (See LICENSE file for details)

=end

module Arachni
module Reports

#
# Awesome prints an {AuditStore#to_h} hash.
#
# @author: Tasos "Zapotek" Laskos
#                                      <tasos.laskos@gmail.com>
#                                      <zapotek@segfault.gr>
# @version: 0.1
#
class AP < Arachni::Report::Base

    #
    # @param [AuditStore]  audit_store
    # @param [Hash]   options    options passed to the report
    # @param [String]    outfile    where to save the report
    #
    def initialize( audit_store, options )
        @audit_store   = audit_store
    end

    def run( )

        print_line( )
        print_status( 'Awesome printing AuditStore as a Hash...' )

        ap @audit_store.to_h

        print_status( 'Done!' )
    end

    def self.info
        {
            :name           => 'AP',
            :description    => %q{Awesome prints an AuditStore hash.},
            :author         => 'Tasos "Zapotek" Laskos <tasos.laskos@gmail.com>',
            :version        => '0.1'
        }
    end

end

end
end
