# to_s vs. to_str test

module String_Test
    def initialize(arg)
        @test = arg
    end

    def to_s
        puts 'to_s called!'
        'to_s ' + @test
    end

    def to_str
        puts 'to_str called!'
        'to_str ' + @test
    end
end

class Both
    include String_Test
end

class No_to_s
    include String_Test
    undef_method :to_s
end

class No_to_str
    include String_Test
    undef_method :to_str
end

class Neither
    include String_Test
    undef_method :to_s
    undef_method :to_str
end


[Both, No_to_s, No_to_str, Neither].each do |curr_class|
    puts 
    puts '=' * 40
    puts curr_class.to_s
    puts '=' * 40

    t = curr_class.new('foo')
    [
        %q{t                       },
        %q{p t                     },
        %q{print t, "\n"           },
        %q{puts t                  },
        %q{puts t.to_s             },
        %q{puts t, t               },
        %q{"#{t}"                  },
        %q{puts "#{t}"             },
        %q{puts t.to_str           },
        %q{puts 'ADDING:' + t      },
        %q{'123'.split(t)          },
        %q{Dir.glob(t)             },
        %q{File.new(t)             },
        %q{/./.match(t)            },
        %q{nil.respond_to?(t)      },

    ].each do |code|
        puts 'RUNNING: ' + code
        begin
            eval code
        rescue Exception => e
            puts "ERROR: #{e}"
        end
        puts '-' * 20
    end
end