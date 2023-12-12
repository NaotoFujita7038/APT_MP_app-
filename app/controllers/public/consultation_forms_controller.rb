class Public::ConsultationFormsController < ApplicationController
  def new
     @consultation_form = ConsultationForm.new
     @consultation_forms= ConsultationForm.all
     @customer_id=current_customer
  end

  # 確認画面を作成する場合はこのような記述になるかと思います。
  # newアクションから入力内容を受け取り、
  # 送信ボタンを押されたらcreateアクションを実行します。
  def confirm
   
    @consultation_form = ConsultationForm.find(params[:id])
      render :confirm
  end

def update
    @consultation_form=ConsultationForm.find(params)
if  @consultation_form=ConsultationForm.update(consultation_form_params)
    flash[:notice] = "successfully"
    redirect_to items_path(@item.id)
else
       flash[:notice] = "error"     
       render :edit
end
end
  # 実際に送信するアクションになります。
  # ここで初めて入力内容を保存します。
  # セキュリティーのためにも一定時間で入力内容の削除を行ってもいいかもしれません。
  def create
    @consultation_form=ConsultationForm.new(consultation_form_params)
    if @consultation_form.save
     
      redirect_to confirm_path(@consultation_form.id)
    else
      render :new
    end
  end
  
  

 

  private

  def consultation_form_params
    params.require(:consultation_form)
          .permit(:content)
          .merge(customer_id: current_customer.id)
  end
end

