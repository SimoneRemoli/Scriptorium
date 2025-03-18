package it.uniroma2.dicii.bd.Model.Domain;

public class Utente
{
    private String nome;
    private String cognome;
    private String data_di_nascita;

    public Utente(String n, String c, String d)
    {
        this.nome = n;
        this.cognome = c;
        this.data_di_nascita = d;
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }

    public String getData_di_nascita() {
        return data_di_nascita;
    }
}
