package it.uniroma2.dicii.bd.Model.Domain;

import java.util.ArrayList;
import java.util.Scanner;

public abstract class Personale
{
    String nome;
    String cognome;
    String password;

    public Personale(String nome, String cognome, String password)
    {
        this.nome = nome;
        this.cognome = cognome;
        this.password = password;

    }

    public String getCognome() {
        return cognome;
    }

    public String getPassword() {
        return password;
    }

    public String getNome() {
        return nome;
    }

    public abstract void aggiungi_personale();
    public abstract void elimina_personale();

    public Personale imposta_acquisizione_in_aggiunta(int codice)
    {
        String nome="", cognome="",password="", ruolo="";
        Ruolo role = Ruolo.fromint(codice);
        if(role.toString().equals("BIBLIOTECARIO")) ruolo = "bibliotecario";
        if(role.toString().equals("ADMIN")) ruolo = "amministratore";



        Scanner tastiera = new Scanner(System.in);
        System.out.print("\t Inserisci il nome del " + ruolo + " : ");
        nome = tastiera.next();
        tastiera.nextLine();
        System.out.print("\t Inserisci il cognome del " + ruolo + " : ");
        cognome = tastiera.next();
        tastiera.nextLine();
        System.out.print("\t Password da assegnare: ");
        password = tastiera.next();
        tastiera.nextLine();

        if(ruolo=="bibliotecario") return new Bibliotecario(nome,cognome,password);
        if(ruolo=="amministratore") return new Admin(nome,cognome,password);

        return null;
    }
}
