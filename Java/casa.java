public class Casa {
    String cor;
    Porta[] p1 = new Porta[3];
    
    public void Pinta(String cor)
    {
        this.cor = cor;
    }
    
    public void QuantidadePortasAbertas()
    {
        int i = 0, contPortas = 0;
        for(i = 0; i < p1.length; i++)
        {
            if(p1[i].estaAberta == true)
            {
                contPortas += 1;
            }
        }
    
        System.out.println("Quantidade de portas ABERTAS: " +contPortas);
     }
    
    public void imprime() {
        System.out.println("Cor da Casa: " +this.cor);
    }
} 
