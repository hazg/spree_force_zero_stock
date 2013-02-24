module Spree::Search
  class ForceZeroStock < Spree::Core::Search::Base
    
    private

    def get_base_scope
      base_scope = Spree::Product.active
      base_scope = base_scope.in_taxon(taxon) unless taxon.blank?
      base_scope = get_products_conditions_for(base_scope, keywords)
      if not @properties[:force_out_of_stock]
        base_scope = base_scope.on_hand unless Spree::Config[:show_zero_stock_products]
      end
      base_scope = add_search_scopes(base_scope)
    end

    def prepare(params)
      super
      @properties[:force_out_of_stock] = params.include?(:show_zero_stock)
    end
  end
end
