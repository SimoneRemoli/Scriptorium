package it.uniroma2.dicii.bd.Model.Domain;

public class Credentials
{
    private int identificativo;
    private String password;
    private Ruolo ruolo;

    public Credentials(int id, String ps, Ruolo ruoloo)
    {
        this.identificativo = id;
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
}
