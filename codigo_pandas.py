import pandas as pd

df = pd.read_csv('./BD_Atlas_1991_2022 - Atlas - Valores Corrigidos.csv')

soma_obitos = df.groupby('descricao_tipologia')['obitos'].sum()

print(soma_obitos)

soma_prejuizos = df.groupby('descricao_tipologia')['prejuizos_totais'].sum()

print(soma_prejuizos)