class AvaliacaoAlunosController < ApplicationController
  before_action :set_avaliacao_aluno, only: %i[ show edit update destroy ]

  # GET /avaliacao_alunos or /avaliacao_alunos.json
  def index
    @avaliacao_alunos = AvaliacaoAluno.all
  end

  # GET /avaliacao_alunos/1 or /avaliacao_alunos/1.json
  def show
  end

  # GET /avaliacao_alunos/new
  def new
    @avaliacao_aluno = AvaliacaoAluno.new
  end

  # GET /avaliacao_alunos/1/edit
  def edit
  end

  # POST /avaliacao_alunos or /avaliacao_alunos.json
  def create
    @avaliacao_aluno = AvaliacaoAluno.new(avaliacao_aluno_params)

    respond_to do |format|
      if @avaliacao_aluno.save
        format.html { redirect_to avaliacao_aluno_url(@avaliacao_aluno), notice: "Avaliacao aluno was successfully created." }
        format.json { render :show, status: :created, location: @avaliacao_aluno }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avaliacao_aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliacao_alunos/1 or /avaliacao_alunos/1.json
  def update
    respond_to do |format|
      if @avaliacao_aluno.update(avaliacao_aluno_params)
        format.html { redirect_to avaliacao_aluno_url(@avaliacao_aluno), notice: "Avaliacao aluno was successfully updated." }
        format.json { render :show, status: :ok, location: @avaliacao_aluno }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avaliacao_aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacao_alunos/1 or /avaliacao_alunos/1.json
  def destroy
    @avaliacao_aluno.destroy

    respond_to do |format|
      format.html { redirect_to avaliacao_alunos_url, notice: "Avaliacao aluno was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliacao_aluno
      @avaliacao_aluno = AvaliacaoAluno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avaliacao_aluno_params
      params.require(:avaliacao_aluno).permit(:pontos, :observacoes)
    end
end
