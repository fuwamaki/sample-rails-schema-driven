class User < ApplicationRecord
    def json_value
        {
          id: id,
          name: name
        }
      end
end
