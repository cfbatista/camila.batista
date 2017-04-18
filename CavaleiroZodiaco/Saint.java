public class Saint{
    private String nome;
    private Armadura armadura;
    
    private Genero genero = Genero.NAO_INFORMADO;
    private Status status = Status.VIVO;
    private boolean vestida;
    
    private double vida = 100.0;
    protected int qtdSentidosDespertos;
    
    public void vestir(){
        this.vestida = true;
    }
    
    public void perderVida(double dano){
        if(dano < 0){
            dano *= (-1);
        }
        if(getVida() < 1){
            setStatus(status.MORTO);
            this.vida = 0;
        }else{
            this.vida -= dano;
        }
    }

    
    public Saint(){}
    public Saint(String nome, Armadura armadura) throws Exception{
        this.nome = nome;
        this.armadura = armadura;
    }
    
    public boolean isVestida(){
        return this.vestida;
    }
    public void setVestida(boolean vestida){
        this.vestida = vestida;
    }
    
    public Armadura getArmadura(){
        return this.armadura;
    }
    
    public Genero getGenero(){
        return this.genero;
    }
    public void setGenero(Genero genero){
        this.genero = genero;
    }
    
    public Status getStatus(){
        return this.status;
    }
    public void setStatus(Status status){
        this.status = status;
    }
    
    public double getVida(){
        return this.vida;
    }
    public void setVida(double vida){
        this.vida = vida;
    }
    public int getQtdSentidosDespertos(){
        return this.qtdSentidosDespertos;
    }
}