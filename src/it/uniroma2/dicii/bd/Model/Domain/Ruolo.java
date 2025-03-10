package it.uniroma2.dicii.bd.Model.Domain;

public enum Ruolo
{
    Amministratore(1),
    Bibliotecario(2);

    private final int id;

    private Ruolo(int id)
    {
        this.id = id;
    }
    public static Ruolo fromint(int id)
    {
        for(Ruolo a:values())
        {
            if(a.getId()==id)
            {
                return a;
            }
        }
        return null;
    }
    public int getId() {
        return id;
    }
}
