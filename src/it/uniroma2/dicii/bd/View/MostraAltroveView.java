package it.uniroma2.dicii.bd.View;

import it.uniroma2.dicii.bd.Model.Domain.InformazionIAltrove;

import java.io.IOException;
import java.util.List;

public class MostraAltroveView
{
    public static int show_altrove(List<InformazionIAltrove> getInfo) throws IOException
    {
        int i = 0;
        for (InformazionIAltrove a : getInfo) {
            System.out.println(i++ + ")" + "  ISBN: " + a.getISBN() + ", TITOLO: " + a.getTitolo() + ", Disponibilità: " + a.getDisponibilita() + ", Città: " + a.getCitta() + ", Nome biblioteca: " + a.getNome_biblioteca() + "\n");
        }
        return i;
    }
}
