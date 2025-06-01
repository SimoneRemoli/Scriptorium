package it.uniroma2.dicii.bd.View;
import it.uniroma2.dicii.bd.Model.Domain.Utente;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Scanner;

public class UtenteView {
    public static void valida(String nome)
    {
        if (!nome.matches("^[a-zA-Z\\-]+$"))
        {
            throw new IllegalArgumentException("Il nome può contenere solo lettere e trattini.");
        }
    }
    public static Utente show_menu() throws IOException {
        String nome = "", cognome = "",data="";
        Scanner tastiera = new Scanner(System.in);
        while(true)
        {
            try
            {
                System.out.println("Inserisci il tuo nome: ");
                nome = tastiera.nextLine();
                valida(nome);
                break;
            } catch (IllegalArgumentException e)
            {
                System.err.println("Inserisci un nome corretto. ");
            }
        }
        while(true)
        {
            try{
                System.out.println("Inserisci il cognome: ");
                cognome = tastiera.nextLine();
                valida(cognome);
                break;

            }catch (IllegalArgumentException e)
            {
                System.err.println("Inserisci un cognome corretto. ");
            }
        }

        while(true) {
            try{
                System.out.println("Inserisci la data di nascita (formato dd/MM/yyyy): ");
                data = tastiera.nextLine();
                LocalDate.parse(data, DateTimeFormatter.ISO_LOCAL_DATE);
                break;
            }catch (DateTimeParseException e)
            {
                System.err.println("Inserisci in formato di data indicato: dd/MM/yyyy! ");
            }
        }
        return new Utente(nome, cognome, data);
    }
}
