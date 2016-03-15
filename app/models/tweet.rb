class Tweet < ActiveRecord::Base
  acts_as_taggable
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_many :votes

  def vote!(ip)
    unless Vote.recent.exists?(:ip => ip, :tweet_id => id)
      increment!(:votes_up)
      Vote.create(:ip => ip, :tweet_id => id)
    end
  end

  def safe_data
    OpenStruct.new(data)
  end

  def youtube
    safe_data.to_s.include?("youtu")
  end

  # Called by the elasticsearch indexer and should add the tag names
  def as_indexed_json(options={})
    as_json(include: { tags: { only: :name } }, methods: :hot_score)
  end

  # Work out the virality of this tweet
  def hot_score
    # sign of the score
    if votes_up >  0
      s = 1.0
    elsif votes_up == 0
      s = 0.0
    else
      s = -1.0
    end
    # absolute value of the score
    if votes_up >= 1
      x = votes_up
    else
      x = 1.0
    end

    # seconds between submission time and midnight, new years day, 2015
    t = created_at - Time.new(2015, 1, 1, 12, 00, 0)

    Math.log10(x) + ( (s * t) / 45000.0 )
  end
end
