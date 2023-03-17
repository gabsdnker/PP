public class Data {
    public int dia;
    public int mes;
    public int ano;
    
    public void fixarData(int dia, int mes, int ano) {
        boolean datavalida = true;
        if ((mes >= 1) && (mes <= 12)) {
            if ((mes == 1) || (mes == 3) || (mes == 5) || (mes == 7) || (mes == 8) || (mes == 10) || (mes == 12)) {
                if ((dia >= 1) && (dia <= 31)) {
                    datavalida = true;
                }
            }else if ((mes == 4) || (mes == 6) || (mes == 9) || (mes == 11)) {
                if ((dia >= 1) && (dia <= 30)) {
                    datavalida = true;
                }
            }else if (mes == 2) {
                if (ano % 4 == 0) {
                    if ((dia >= 1) && (dia <= 29)) {
                        datavalida = true;
                    }
                }
                if (ano % 4 > 0) {
                    if ((dia >= 1) && (dia <= 28)) {
                        datavalida = true;
                    }
    
                }else {
                    datavalida = false;
                }
            }
            if (ano < 0) {
                datavalida = false;
            }
        }else {
            datavalida = false;
        }
        if (datavalida) {
            this.dia = dia;
            this.ano = ano;
            this.mes = mes;
        }else {
            System.out.println("Data inválida");
        }
    
    }