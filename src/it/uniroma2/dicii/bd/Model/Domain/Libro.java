package it.uniroma2.dicii.bd.Model.Domain;

public class Libro
{
    String isbn;
    String titolo;
    int num_copia;

    public Libro(String i, String t, int n)
    {
        this.isbn = i;
        this.titolo = t;
        this.num_copia = n;
    }

    public String getIsbn() {
        return isbn;
    }

    public int getNum_copia() {
        return num_copia;
    }

    public String getTitolo() {
        return titolo;
    }
}
