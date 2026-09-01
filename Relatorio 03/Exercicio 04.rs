use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64
{
    // media aritmetica entre a prova1 e a prova2
    let NPT = (prova1 + prova2) / 2.0; 

    // Pontuacao Final (PF) aplicando uma media ponderada com peso de 60% (0.6) para a NPT 
    // e 40% (0.4) para a redacao.
    let PF = (NPT * 0.6) + (redacao * 0.4);

    if PF >= 60.0 // aprovado 
    {
        println!("Parabens! Candidato aprovado no processo seletivo.");
        println!("Pontuacao Final: {}", PF); 
    }
    else // reprovado 
    {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
        println!("Pontuacao Final: {}", PF);
    }

    PF // retorna a pontuacao final 
}   

fn main ()
{
    println!("Digite a nota da Prova 1: ");
    let mut prova1 = String::new();
    io::stdin().read_line(&mut prova1).expect("Erro ao ler");

    println!("Digite a nota da Prova 2: ");
    let mut prova2 = String::new();
    io::stdin().read_line(&mut prova2).expect("Erro ao ler");

    println!("Digite a nota da Redacao: ");
    let mut redacao = String::new();
    io::stdin().read_line(&mut redacao).expect("Erro ao ler");

    // Converte as entradas de String para f64
    let prova1: f64 = prova1.trim().parse().unwrap_or(0.0);
    let prova2: f64 = prova2.trim().parse().unwrap_or(0.0);
    let redacao: f64 = redacao.trim().parse().unwrap_or(0.0);

    let pontuacao_final = calcular_pontuacao(prova1, prova2, redacao);
}
