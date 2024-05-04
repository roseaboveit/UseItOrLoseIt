require "test_helper"

class RecipeNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_note = recipe_notes(:one)
  end

  test "should get index" do
    get recipe_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_note_url
    assert_response :success
  end

  test "should create recipe_note" do
    assert_difference("RecipeNote.count") do
      post recipe_notes_url, params: { recipe_note: {  } }
    end

    assert_redirected_to recipe_note_url(RecipeNote.last)
  end

  test "should show recipe_note" do
    get recipe_note_url(@recipe_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_note_url(@recipe_note)
    assert_response :success
  end

  test "should update recipe_note" do
    patch recipe_note_url(@recipe_note), params: { recipe_note: {  } }
    assert_redirected_to recipe_note_url(@recipe_note)
  end

  test "should destroy recipe_note" do
    assert_difference("RecipeNote.count", -1) do
      delete recipe_note_url(@recipe_note)
    end

    assert_redirected_to recipe_notes_url
  end
end
