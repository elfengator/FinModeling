module FinModeling

  class CashChangeCalculation < CompanyFilingCalculation
    include CanCacheClassifications
    include CanCacheSummaries
    include CanClassifyRows

    #BASE_FILENAME = "summaries/ai_"

    #ALL_STATES  =          [ :oa, :fa ]
    #NEXT_STATES = { nil => [ :oa, :fa ],
    #                :oa => [ :oa, :fa ],
    #                :fa => [ :oa, :fa ] }

    def summary(period)
      #summary_cache_key = period.to_pretty_s
      #summary = lookup_cached_summary(summary_cache_key)
      #return summary if !summary.nil?

      summary = super(period, type_to_flip="debit", flip_total=false)
      #if !lookup_cached_classifications(BASE_FILENAME, summary.rows)
      #  lookahead = [4, summary.rows.length-1].min
      #  classify_all_rows(ALL_STATES, NEXT_STATES, summary.rows, FinModeling::AssetsItem, lookahead)
      #  save_cached_classifications(BASE_FILENAME, summary.rows)
      #end

      #save_cached_summary(summary_cache_key, summary)

      return summary
    end

  end
end
