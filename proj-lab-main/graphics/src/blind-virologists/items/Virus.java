package items;

import effects.*;

import java.util.Scanner;

/**
 * A virust megvalosito osztaly.
 *
 * @author Kovacs Aron
 * @since 2022-04-22
 */
public class Virus extends Agent {
    /**
     * Konstruktor. A fuggveny letrehoz egy vakcinat.
     */
    public Virus() {
    }

    /**
     * Konstruktor. A fuggveny letrehoz egy virust.
     *
     * @param effect a kivant effect
     */
    public Virus(Effect effect) {
        super(effect);
    }




    /**
     * A fuggveny a megfelelo effect-et visszaadja.
     */
    @Override
    public Effect use() {
        return effect;
    }

    /**
     * A fuggveny segitsegevel tortenik az objektum azonositasa a tesztesetekhez
     *
     * @return out az objektum azonositoja
     */
    @Override
    public String toString() {
        return "Virus - " + effect.toString();
    }

}
