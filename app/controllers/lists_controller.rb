class ListsController < ApplicationController

  def index
    @list = List.new
    # FIXME
    #
    # Nope. Terrible. ko;jsdf ioasjef oi;awjef oiawjef oiawejf oiaejf ;oiawefj
    # o;iawjf lkadjsffj ;oiadfj ;oiaefj ao;sefj aldfjk l;xjkv ;oizjv oasefkj
    # sldfjk; aosidf;j zox;ivj zox;ivj aso;dfij asodfkl;j as;ofij asfklj zx;ljv
    # oi;asejrf oiasefj
    @lists = List.all
    # render 'lists/index.html.erb'
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_url(@list)
  end
  private

    def list_params # strong parameters
      params.require(:list).permit(:name)
    end
end
