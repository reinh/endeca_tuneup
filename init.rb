if defined? Endeca && defined? Endeca::Document
  # Tuneup instrumentation
  class << Endeca::Document
    def all_with_tuneup(*args)
      Fiveruns::Tuneup.step "#{name}.all", :model do
        all_without_tuneup(*args)
      end
    end
    alias_method_chain :all, :tuneup

    def first_with_tuneup(*args)
      Fiveruns::Tuneup.step "#{name}.first", :model do
        first_without_tuneup(*args)
      end
    end
    alias_method_chain :first, :tuneup

    def by_id_with_tuneup(*args)
      Fiveruns::Tuneup.step "#{name}.by_id", :model do
        by_id_without_tuneup(*args)
      end
    end
    alias_method_chain :by_id, :tuneup
  end
end