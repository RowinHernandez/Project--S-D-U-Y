class NoticesController < PeopleBaseController
  # GET /notices
  # GET /notices.json
  def index
    @notices = @person.notices.order(:id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notices }
    end
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
    @notice = @person.notices.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/new
  # GET /notices/new.json
  def new
    @notice = @person.notices.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/1/edit
  def edit
    @notice = @person.notices.find(params[:id])
  end

  # POST /notices
  # POST /notices.json
  def create
    @notice = @person.notices.new(params[:notice])

    respond_to do |format|
      if @notice.save
        format.html { redirect_to person_notices_path, notice: 'notice was successfully created.' }
        format.json { render json: @notice, status: :created, location: @notice }
      else
        format.html { render action: "new" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notices/1
  # PUT /notices/1.json
  def update
    @notice = @person.notices.find(params[:id])

    respond_to do |format|
      if @notice.update_attributes(params[:notice])
        format.html { redirect_to person_notices_path( @person), notice: 'notice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to person_notices_path( @person) }
      format.json { head :no_content }
    end
  end
  def load_people
      @people = Person.all.collect{|person| ["(#{person.id}) #{person.name} #{person.surname}", person.id]}
  end
end
