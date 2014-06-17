require 'test_helper'

class AuthorPiecesControllerTest < ActionController::TestCase
  setup do
    @author_piece = author_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:author_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create author_piece" do
    assert_difference('AuthorPiece.count') do
      post :create, author_piece: { au_id: @author_piece.au_id, piece_id: @author_piece.piece_id, role: @author_piece.role }
    end

    assert_redirected_to author_piece_path(assigns(:author_piece))
  end

  test "should show author_piece" do
    get :show, id: @author_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @author_piece
    assert_response :success
  end

  test "should update author_piece" do
    patch :update, id: @author_piece, author_piece: { au_id: @author_piece.au_id, piece_id: @author_piece.piece_id, role: @author_piece.role }
    assert_redirected_to author_piece_path(assigns(:author_piece))
  end

  test "should destroy author_piece" do
    assert_difference('AuthorPiece.count', -1) do
      delete :destroy, id: @author_piece
    end

    assert_redirected_to author_pieces_path
  end
end
