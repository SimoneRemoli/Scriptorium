package it.uniroma2.dicii.bd.View;

import it.uniroma2.dicii.bd.Model.Domain.InformazionIAltrove;

import java.io.IOException;
import java.util.List;
import java.util.Scanner;

public class SceltaAltrove
{
    public static int scegli(int indice, List<InformazionIAltrove> info) throws IOException
    {
        Scanner tastiera = new Scanner(System.in);
        int scelta = 0;
        System.out.println("Il libro è disponile in più biblioteche.");
        for(int i=0;i<indice;i++)
        {
            System.out.println(i+". Per richiedere la copia presso "+info.get(i).getCitta()+" della "+info.get(i).getNome_biblioteca());

        }
        System.out.println(">>");
        do {
            scelta = tastiera.nextInt();
        }while((scelta<0)||(scelta>indice-1));
        return scelta;
    }
}
