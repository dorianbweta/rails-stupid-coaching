require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end

  test 'saying nothing yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: ''
    click_on 'Ask'

    assert_text "I can't hear you!"
  end

  test 'saying i am going to work yields a good response from the coach' do
    visit ask_url
    fill_in 'question', with: 'i am going to work', match: :prefer_exact
    click_on 'Ask'

    assert_text 'Great!'
  end

  test 'asking a question yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: '?'
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!'
  end
end
