module Refinery
  module Blog
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/blog/category',
                include: [:translations],
                order: 'refinery_blog_category_translations.title ASC'

        private

        def category_params
          params.require(:category).permit(:title)
        end
      end
    end
  end
end
