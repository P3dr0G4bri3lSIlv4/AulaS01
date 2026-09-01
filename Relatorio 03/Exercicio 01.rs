use std::io;

fn validar_placa(placa:&str) -> bool
{
// Ter pelo menos 7 caracteres de comprimento.
    if placa.len() < 7
    {
        return false;
    }

    let mut maiusculas = 0;
    let mut numeros = 0;

    for c in placa.chars()
    {
        if c.is_ascii_uppercase()// Conter pelo menos 4 letras maiúsculas
        {
            maiusculas += 1;
        }
        else if c.is_numeric()// Conter pelo menos 2 numeros
        {
            numeros += 1;
        }

    }
    //Valida os critérios minimos
    maiusculas >= 4 && numeros >= 2
}

fn main()
{
    loop
    {
        let mut placa = String::new(); // criando uma variavel string mutavel
        println!("Digite a placa do veículo: ");
        io::stdin().read_line(&mut placa).expect("Erro ao ler");// entrando com um valor na varivel placa

        // remove a quebra de linha \n
        let placa = placa.trim();

        if validar_placa(placa)// vai puxar a fução se retornar true vai dar o print
        {
            println!("Placa cadastrada no sistema!");
            break;
        }
        else
        {
            println!("Placa inválida. Tente novamente!\n");
        }

    }

}
