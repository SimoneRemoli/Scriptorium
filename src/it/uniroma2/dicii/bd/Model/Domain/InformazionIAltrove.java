package it.uniroma2.dicii.bd.Model.Domain;

public class InformazionIAltrove
{
    private String ISBN;
    private String titolo;
    private int disponibilita;

    private String nome_biblioteca;
    private String citta;

    public InformazionIAltrove(String i, String t, int d, String n, String c)
    {
        this.ISBN = i;
        this.titolo = t;
        this.disponibilita = d;
        this.nome_biblioteca = n;
        this.citta = c;
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
