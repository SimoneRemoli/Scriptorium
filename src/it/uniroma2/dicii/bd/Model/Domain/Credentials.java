package it.uniroma2.dicii.bd.Model.Domain;

public class Credentials
{
    private int identificativo;
    private String nome;
    private String cognome;
    private String password;
    private Ruolo ruolo;

    public Credentials(int id, String n, String c, String ps, Ruolo ruoloo)
    {
        this.identificativo = id;
        this.nome=n;
        this.cognome=c;
        this.password = ps;
        this.ruolo = ruoloo;
    }

    public int getIdentificativo() {
        return identificativo;
    }

    public String getPassword() {
        return password;
    }

    public Ruolo getRuolo() {
        return ruolo;
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }
}
