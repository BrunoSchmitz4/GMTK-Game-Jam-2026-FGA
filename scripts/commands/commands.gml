// Esse script é referente aos comandos da barra de comando.
// Ele existe para fins de testes e não pode ser levado para
// a branch principal.

// Como funciona:
// Um evento/listener que ao jogador pressionar:
// - Ctrl + Arrow_Up: ativará a barra de comandos;
// - Ctrl + Arrow_Down: desativará a barra de comandos;
// Comandos (só funcionam se a barra de comandos estiver ativa):
// /addtime + TempoEspecífico: adiciona tempo específico;
// /deltime + TempoEspecífico: remove tempo específico;

function commands(_texto) {
    var _partes = string_split(_texto, " ");
    var _cmd = _partes[0];
    var _valor = 0;
	try { _valor = real(_partes[1]); } catch (_e) { return; }

    switch (_cmd) {
        case "/addtime":
            global.segundo += _valor;
            break;

        case "/deltime":
            global.segundo -= _valor;
            break;
    }
}