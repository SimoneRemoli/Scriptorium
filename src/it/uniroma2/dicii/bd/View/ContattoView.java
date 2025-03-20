package it.uniroma2.dicii.bd.View;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Scanner;

public class ContattoView {
    public static Map.Entry<String, String> contact(int scelta) throws IOException {
        Scanner tastiera = new Scanner(System.in);
        String email = null;
        String phone = null;

        switch (scelta) {
            case 1 -> {
                System.out.println("\t Inserisci email: ");
                email = tastiera.next();
            }
            case 2 -> {
                System.out.println("\t Inserisci telefono: ");
                phone = tastiera.next();
            }
            default -> {
                System.out.println("\t Scelta non valida.");
                return null; // Ritorna null in caso di scelta errata
            }
        }

        return new AbstractMap.SimpleEntry<>(email, phone);
    }
}
