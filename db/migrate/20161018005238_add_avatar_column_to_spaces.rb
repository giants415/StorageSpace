class AddAvatarColumnToSpaces < ActiveRecord::Migration[5.0]
    def up
      add_attachment :spaces, :photo1
      add_attachment :spaces, :photo2
    end

    def down
      remove_attachment :spaces, :photo1
      remove_attachment :spaces, :photo2
    end
end
