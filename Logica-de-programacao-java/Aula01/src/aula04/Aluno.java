package aula04;

public class Aluno {

	private String nomeAluno;
	private String cpfAluno;
	private float mediaAluno;
	
	public Aluno(String nomeAluno, String cpfAluno, float mediaAluno) {
		this.setNomeAluno(nomeAluno);
		this.setCpfAluno(cpfAluno);
		this.setMediaAluno(mediaAluno);
	

}

	public float getMediaAluno() {
		return mediaAluno;
	}

	public void setMediaAluno(float mediaAluno) {
		this.mediaAluno = mediaAluno;
	}

	public String getCpfAluno() {
		return cpfAluno;
	}

	public void setCpfAluno(String cpfAluno) {
		this.cpfAluno = cpfAluno;
	}

	public String getNomeAluno() {
		return nomeAluno;
	}

	public void setNomeAluno(String nomeAluno) {
		this.nomeAluno = nomeAluno;
	}
}