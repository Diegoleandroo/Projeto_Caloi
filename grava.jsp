<%@page language="java" import="java.sql.*" %>

<%

    //cria as variaveis e armazena as informações
    //digitadas pelo usuário
    String vnome  = request.getParameter("txtNome");
    int    vidade = Integer.parseInt( request.getParameter("txtIdade") )  ;
    int    vcontato = Integer.parseInt(request.getParameter("txtContato"));
    int    vcpf = Integer.parseInt(request.getParameter("txtCpf"));
    String vemail = request.getParameter("txtEmail");
    int    vcep = Integer.parseInt(request.getParameter("txtCep"));
    String vestado = request.getParameter("txtEstado");
    String vendereco = request.getParameter("txtEndereco");
    int    vn = Integer.parseInt(request.getParameter("txtNumero"));
    String vcomplemento = request.getParameter("txtComplemento");
    String vpagamento = request.getParameter("txtPagamento");
    String vparcelamento = request.getParameter("txtPgto");
    String vpac_Sedex = request.getParameter("txtEscolha");
    String vobservacao = request.getParameter("txtObservacao");




    //variaveis para o banco de dados
    String banco     = "caloi";
    String endereco  = "jdbc:mysql://localhost:3307/" + banco;
    String usuario   = "root";
    String senha     = "" ;

    //Driver
    String driver  = "com.mysql.jdbc.Driver" ;  

    //Carregar o driver na memória
    Class.forName( driver ) ;

    //cria a variavel para conectar com o banco de dados
    Connection conexao ;

    //Abri a conexao com o banco de dados
    conexao = DriverManager.getConnection(endereco, usuario, senha) ;

    //Cria a variavel sql com o comando de inserir
    String sql = "INSERT INTO clientes (Nome, Idade, Contato, CPF, Email, CEP, Estado, endereco, N, Complemento, Pagamento, Parcelamento, Escolha, observacao) 
    value (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    PreparedStatement stm = conexao.prepareStatement( sql ) ;
    stm.setString( 1 , vnome ) ; 
    stm.setInt( 2 , vidade ) ;
    stm.setInt( 3 , vcontato ) ;
    stm.setInt(4 , vcpf);
    stm.setString(5 , vemail);
    stm.setInt(6 , vcep);    
    stm.setString(7 , vestado); 
    stm.setInt(8 , vendereco); 
    stm.setInt(9 , vn);
    stm.setString(10 , vcomplemento);
    stm.setString(11 , vpagamento);
    stm.setString(12 , vparcelamento);
    stm.setString(13 , vpac_Sedex);
    stm.setString(14 , vobservacao);




    stm.execute() ;
    stm.close() ;

    out.print("Dados gravados com sucesso!!!") ;
    out.print("<br><br>") ;
    out.print("<a href='cadastro.html'>Voltar</a>") ;
%>
