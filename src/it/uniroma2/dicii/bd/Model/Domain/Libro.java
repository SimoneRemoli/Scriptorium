package it.uniroma2.dicii.bd.Model.Domain;

public class Libro
{
    String isbn;
    int colonne;
    int num_copia;
    String nome_biblio;
    String citta;

    public Libro(String i, int c, int n, String bi, String ci)
    {
        this.isbn = i;
        this.colonne = c;
        this.num_copia = n;
        this.nome_biblio = bi;
        this.citta = ci;
    }

    public String getIsbn() {
        return isbn;
    }

    public int getNum_copia() {
        return num_copia;
    }

    public int getColonne() {
        return colonne;
    }

    public String getCitta() {
        return citta;
    }

    public String getNome_biblio() {
        return nome_biblio;
    }
}
