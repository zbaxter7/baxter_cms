class WorkOrdersController < ApplicationController
  before_action :set_work_order, only: [:show, :edit, :update, :destroy]

  # GET /work_orders
  # GET /work_orders.json
  def index
    @work_orders = Work_Order.all
  end

  # GET /work_orders/1
  # GET /work_orders/1.json
  def show
  end

  # GET /work_orders/new
  def new
    @work_order = Work_Order.new
  end

  # GET /work_orders/1/edit
  def edit
  end

  # POST /work_orders
  # POST /work_orders.json
  def create
    @work_order = Work_Order.new(work_order_params)

    respond_to do |format|
      if @work_order.save
        format.html { redirect_to @work_order, notice: 'Work order was successfully created.' }
        format.json { render :show, status: :created, location: @work_order }
      else
        format.html { render :new }
        format.json { render json: @work_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_orders/1
  # PATCH/PUT /work_orders/1.json
  def update
    respond_to do |format|
      if @work_order.update(work_order_params)
        format.html { redirect_to @work_order, notice: 'Work order was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_order }
      else
        format.html { render :edit }
        format.json { render json: @work_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_orders/1
  # DELETE /work_orders/1.json
  def destroy
    @work_order.destroy
    respond_to do |format|
      format.html { redirect_to work_orders_url, notice: 'Work order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order
      @work_order = Work_Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_order_params
      params.require(:work_order).permit(:wo_nbr, :description, :employee, :customer, :hours, :start_date, :end_date, :notes)
    end
end
