class Book < ApplicationRecord
  def self.search(search)
    if search
      where(query_string,"%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%","%#{search}%" )
    else
      all
    end
  end

  def self.query_string
    result = ''
    result += 'title LIKE ? OR '
    result += 'author LIKE ? OR '
    result += 'genre LIKE ? OR '
    result += 'classification LIKE ? OR '
    result += 'catagory LIKE ?'
    result
  end

  def self.classifications
      [
        'General Works - encyclopedias',
        'Philosophy, Psychology, Religion',
        'History - Auxiliary Sciences',
        'History (except American)',
        'General U.S. History',
        'Local U.S. History',
        'Geography, Anthropology, Recreation',
        'Social Sciences U',
        'Political Science V',
        'Law Z - Bibliography and Library Science',
        'Education',
        'Music',
        'Fine Arts',
        'Language and Literature',
        'Science',
        'Medicine',
        'Agriculture',
        'Technology',
        'Military',
        'Naval Science',
        'Bibliography and Library Science'
      ]
  end
end
