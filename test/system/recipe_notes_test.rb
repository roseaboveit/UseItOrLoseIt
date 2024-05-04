require "application_system_test_case"

class RecipeNotesTest < ApplicationSystemTestCase
  setup do
    @recipe_note = recipe_notes(:one)
  end

  test "visiting the index" do
    visit recipe_notes_url
    assert_selector "h1", text: "Recipe notes"
  end

  test "should create recipe note" do
    visit recipe_notes_url
    click_on "New recipe note"

    click_on "Create Recipe note"

    assert_text "Recipe note was successfully created"
    click_on "Back"
  end

  test "should update Recipe note" do
    visit recipe_note_url(@recipe_note)
    click_on "Edit this recipe note", match: :first

    click_on "Update Recipe note"

    assert_text "Recipe note was successfully updated"
    click_on "Back"
  end

  test "should destroy Recipe note" do
    visit recipe_note_url(@recipe_note)
    click_on "Destroy this recipe note", match: :first

    assert_text "Recipe note was successfully destroyed"
  end
end
