class TodolistsController < ApplicationController
  
  before_action :authenticate_user!
  
  def new
    @book = Book.new
  end
  
  def create
    # １. データを新規登録するためのインスタンス作成
    list = Book.new(list_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # ３. トップ画面へリダイレクト
    redirect_to '/top'
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:book).permit(:title, :body)
  end

  
  
  
  
end
