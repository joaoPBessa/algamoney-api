package com.example.algamoney.api.model;

import java.math.BigDecimal;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "LANCAMENTO")
@SequenceGenerator(name = Lancamento.LANCAMENTO_GENERATOR, allocationSize = 1, initialValue = 1, sequenceName = "LANCAMENTO_CODIGO")
public class Lancamento {
	
	public static final String LANCAMENTO_GENERATOR = "LANCAMENTO_CODIGO";
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = LANCAMENTO_GENERATOR)
	@Column(name = "CODIGO")
	private Long codigo;
	
	@NotNull
	@Column(name = "DESCRICAO")
	private String descricao;
	
	@NotNull
	@Column(name = "DATA_VENCIMENTO")
	private LocalDate dataVencimento;
	
	@Column(name = "DATA_PAGAMENTO")
	private LocalDate dataPagamento;
	
	@NotNull
	@Column(name = "VALOR")
	private BigDecimal valor;
	
	@Column(name = "OBSERVACAO")
	private String observacao;
	
	@NotNull
	@Column(name = "TIPO")
	@Enumerated(EnumType.STRING)
	private TipoLancamento tipo;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "CODIGO_CATEGORIA", referencedColumnName = "CODIGO")
	private Categoria categoria;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "CODIGO_PESSOA", referencedColumnName = "CODIGO")
	private Pessoa pessoa;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public LocalDate getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(LocalDate dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public LocalDate getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(LocalDate dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public TipoLancamento getTipo() {
		return tipo;
	}

	public void setTipo(TipoLancamento tipo) {
		this.tipo = tipo;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codigo == null) ? 0 : codigo.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Lancamento other = (Lancamento) obj;
		if (codigo == null) {
			if (other.codigo != null)
				return false;
		} else if (!codigo.equals(other.codigo))
			return false;
		return true;
	}
	
}
