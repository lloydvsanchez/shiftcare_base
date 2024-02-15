module HashParser
  def search_by(subject_hash, key, query)
    subject_hash.filter { |obj| obj[key]=~/#{Regexp.quote(query)}/i }
  end

  def check_duplicates_by(subject_hash, key)
    subject_hash.inject({}) do |result, obj|
      result[obj[key]] = 0 unless result[obj[key]]
      result[obj[key]] += 1
      result
    end.filter { |_k, v| v > 1 }
  end
end
