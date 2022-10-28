package menu;

import cliente.Cliente;
import cliente.ClientePF;
import cliente.ClientePJ;
import java.util.ArrayList;
import java.util.Scanner;

public class Methods {
                    //menu
    ArrayList<Cliente> clientes = new ArrayList<>();
    Menu m = new Menu();
    Scanner sc = new Scanner(System.in);
    
    public void menuMainM(){
        int opcao;
        
        do {
            System.out.println("\n");
            m.menuMain();
            opcao = sc.nextInt();
            
           switch (opcao){
               case 1:
                   menuCreatMenu();
               break;
               case 2:
                   read();
               break;
               case 3:
                   update();
               break;
               case 4:
                   delete();
               break;
               case 0:
                   System.out.println("Saindo do sistema");
               break;
               default:
                   System.out.println("Opção invalida!");
           }
            
        } while (opcao != 0);  
    }
    
    public void menuCreatMenu(){
        int opcao;
        
        do {
            m.menuUpdate();
            opcao = sc.nextInt();
            
            switch(opcao){
                case 1:
                creatPF();
                break;
                case 2:
                creatPJ();
                break;
                default:
                    System.out.println("Opção destinada não existe.");
            }
        } while (opcao != 0);
    }
    
        //CRUD
    
    
        public void creatPF(){
        ClientePF c1 = new ClientePF();
        String nome, email, telefone, endereco, cpf;
        
        System.out.println("--Criar um cliente físico--");
        System.out.println("Informe o nome do cliente: ");
        nome = sc.nextLine();
        System.out.println("Informe o email do cliente:");
        email = sc.nextLine();
        System.out.println("Informe o telefone do cliente:");
        telefone = sc.nextLine();
        System.out.println("Informe o endereço do cliente:");
        endereco = sc.nextLine();
        System.out.println("Informe o CPF do cliente:");
        cpf = sc.nextLine();
        
        c1.setNome(nome);
        c1.setEmail(email);
        c1.setTelefone(telefone);
        c1.setEndereco(endereco);
        c1.setCpf(cpf);
        
        clientes.add(c1);
    }
    
    public void creatPJ(){
        ClientePJ c1 = new ClientePJ();
        
        String nome, email, telefone, endereco, cnpj;
        
        System.out.println("--Criar um cliente jurídico--");
        System.out.println("Informe o nome do cliente:");
        nome = sc.nextLine();
        System.out.println("Informe o email do cliente:");
        email = sc.nextLine();
        System.out.println("Informe o telefone do cliente:");
        telefone = sc.nextLine();
        System.out.println("Informe o endereço do cliente:");
        endereco = sc.nextLine();
        System.out.println("Informe o CNPJ do cliente:");
        cnpj = sc.nextLine();
        
        c1.setNome(nome);
        c1.setEmail(email);
        c1.setTelefone(telefone);
        c1.setEndereco(endereco);
        c1.setCnpj(cnpj);
        
        clientes.add(c1);
    }
    
    
    public void read(){
        System.out.println("\n");
        System.out.println("Solicitando informações dos clientes cadastrados.");
        infoCliente();
    }
    
    public void update(){
        System.out.println("Atualizar informações do cliente");
        int clientePosition;
        
        infoCliente();
        System.out.println("Informe qual cliente será atualizado");
        clientePosition = sc.nextInt();
        
        menuCreatMenu();
        
        Cliente c1 = new Cliente();
        
        clientes.set(clientePosition , c1);
    }
    
    public void delete(){
        System.out.println("Deletar um cliente.");
        int cliente;
        
        infoCliente();
        System.out.println("Informe qual cliente será excluido");
        cliente = sc.nextInt();
        clientes.remove(cliente);
        System.out.println("Cliente " + cliente + " deletado com sucesso!");
    }
    
    //Métodos
    
    public void infoCliente(){
        for (int i = 0; i < clientes.size(); i++) {
        System.out.println("--");
            System.out.println("Cliente: " +i + " Nome: "+clientes.get(i).getNome() +", E-mail: "+ clientes.get(i).getEmail()+ ", Telefone: " + clientes.get(i).getTelefone() + " " +clientes.get(i).getEndereco()+ " " + clientes.get(i).toString());
        System.out.println("--");
        }
        System.out.println("---------------------");
    }
}
