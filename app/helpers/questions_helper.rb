module QuestionsHelper
  def new_answer(f)
    content_tag(:div, class: 'answer') do
      concat tag(:br)
      concat f.text_field(:answers, multiple: true, value: '', class: 'add-answer')
      concat link_to('X', '#', class: 'remove-answer')
    end
  end
end
