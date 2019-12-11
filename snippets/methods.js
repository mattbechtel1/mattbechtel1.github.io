let suspects = [{name: 'Philip Gerard', possessedBy: 'MIKE'}, {name: 'Leo Johnson'}, {name: 'Benjamin Horne', possessedBy: 'greed'}, {name: 'Log', possessedBy: 'Log Lady’s late Husband'}, {name: 'Jacques Renault'}, {name: 'Leland Palmer', possessedBy: 'BOB'}];

suspects.find(suspect => suspect.possessedBy === 'BOB').name;


////

function whoKilledLaura(suspects, evilSpirit) {
    for (i = 0; i < suspects.length; i++) {
        if (suspects[i].possessedBy === evilSpirit) {
            return suspects[i].name;
            }
        }
    }

whoKilledLaura(suspects, 'BOB');