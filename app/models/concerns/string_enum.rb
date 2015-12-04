module StringEnum
  extend ActiveSupport::Concern

  module ClassMethods
    def string_enum(kv)
      kv.each_pair do |name, syms|
        enum name => Hash[
          syms.map { |s| [s.to_sym, s.to_s] }
        ]
      end
    end
  end
end
