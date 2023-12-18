class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)
    
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
       # 保存に失敗した場合の処理
       redirect_to prototype_path(@comment.prototype)
    end# コメントの作成処理を実装する
  end

  def destroy
    # コメントの削除処理を実装する
  end

  private

  def comments_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end