package it.uniroma2.dicii.bd.Model.Domain;

public abstract class Personale
{
    String nome;
    String cognome;


    public abstract void aggiungi_personale();
    public abstract void elimina_personale();
}
