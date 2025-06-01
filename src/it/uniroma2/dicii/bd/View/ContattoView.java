package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Scanner;

public class ContattoView {
    public static void validaTelefono(String input) {
        // almeno 6 cifre, massimo 15
        if (!input.matches("^\\d{6,15}$")) {
            throw new IllegalArgumentException("Numero non valido");
        }
    }
    public static void validaEmail(String email) {
        if (!email.matches("^[\\w.-]+@[\\w.-]+\\.[a-zA-Z]{2,6}$")) {
            throw new IllegalArgumentException("Formato email non valido.");
        }
    }

    public static Map.Entry<String, String> contact(int scelta) throws IOException {
        Scanner tastiera = new Scanner(System.in);
        String email = null;
        String phone = null;

        switch (scelta) {
            case 1 -> {
                while(true)
                {
                    try{
                        System.out.println("\t Inserisci email: ");
                        email = tastiera.next();
                        validaEmail(email);
                        break;
                    }catch (IllegalArgumentException e)
                    {
                        System.err.println("Inserisci un formato email valido. \n");
                    }
                }
            }
            case 2 -> {
                while(true) {
                    try {
                        System.out.println("\t Inserisci telefono: ");
                        phone = tastiera.next();
                        validaTelefono(phone);
                        break;
                    } catch (IllegalArgumentException e) {
                        System.err.println("Inserisci un numero valido. \n");
                    }
                }
            }
            default -> {
                System.out.println("\t Scelta non valida.");
                return null; // Ritorna null in caso di scelta errata
            }
        }
        return new AbstractMap.SimpleEntry<>(email, phone);
    }
}
