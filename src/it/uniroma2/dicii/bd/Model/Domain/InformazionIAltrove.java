package it.uniroma2.dicii.bd.Model.Domain;

public class InformazionIAltrove
{
    private String ISBN;
    private String titolo;
    private int disponibilita;
    private String citta;
    private String nome_biblioteca;

    public InformazionIAltrove(String i, String t, int d, String c, String n)
    {
        this.ISBN = i;
        this.titolo = t;
        this.disponibilita = d;
        this.citta = c;
        this.nome_biblioteca = n;
    }

    public String getTitolo() {
        return titolo;
    }

    public int getDisponibilita() {
        return disponibilita;
    }

    public String getCitta() {
        return citta;
    }

    public String getISBN() {
        return ISBN;
    }

    public String getNome_biblioteca() {
        return nome_biblioteca;
    }
}
