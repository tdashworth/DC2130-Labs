import java.util.Scanner;
import java.util.InputMismatchException;
import java.util.EnumSet;

public class PLTypeEnumR
{
    enum PL { JAVA, C, ADA, PYTHON, LISP, HASKELL, PROLOG }
    
    enum PLType { OO, PROCEDURAL, FUNCTIONAL, LOGICAL }
    
    private static <E extends Enum<E>> E getEnumElement(String elementTypeName, Class<E> elementType)
    {
        boolean haveResult = false;
        E result = null;
        Scanner stdin = new Scanner(System.in);
        
        while ( ! haveResult )
        {
            System.out.print("Input " + elementTypeName + ": ");
            try
            {
                result = Enum.valueOf(elementType, stdin.next().toUpperCase());
                haveResult = true;
            }
            catch (IllegalArgumentException e)
            {
                System.out.println("Not a valid " + elementTypeName + ".");
                stdin.nextLine(); // skip the invalid input
            }
        }
        
        return result;
    }
  
    private static PL plType2PL(PLType plType)
    {
        PL programmingLanguage = null;
        
        switch (plType)
        {
        case OO:
            programmingLanguage = PL.PYTHON;
            break;
        case PROCEDURAL:
            programmingLanguage = PL.ADA;
            break;
        case FUNCTIONAL:
            programmingLanguage = PL.HASKELL;
            break;
        case LOGICAL:
            programmingLanguage = PL.PROLOG;
            break;
        }
        
        return programmingLanguage;
    }

    public static void main(String[] args)
    {
        System.out.print("Known PL Types = ");
        for (PLType t : EnumSet.allOf(PLType.class)) 
        {
            System.out.print(t + " ");
        }
        System.out.println();
        
        PLType plType = getEnumElement("programming language type", PLType.class);
        System.out.println(plType2PL(plType) + " is of type " + plType);
    }
}
