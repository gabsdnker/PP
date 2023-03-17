public class TesteData {

    public static void main(String[] args) {
    
        Data dt = new Data();
        dt.fixarData(10000, 2, 2015);
        System.out.println("Data:" + " " + dt.mostrarData());
    }
    
}