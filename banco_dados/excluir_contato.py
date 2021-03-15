from db import nova_conexao
from mysql.connector.errors import ProgrammingError

sql = 'delete from contatos where nome = %s'
args = ('Luca',)
with nova_conexao() as conexao:
    try:
        cursor = conexao.cursor()
        cursor.execute(sql, args)
        conexao.commit()
    except ProgrammingError as e:
        print(f'Erro: {e.msg}')
    else:
        print(f'{cursor.rowcount} registros deletados.')
