import pandas as pd

df = pd.read_csv('movies_metadata.csv')

df = df[df.title.notna() & df.release_date.notna()][['title', 'release_date']]

df['year'] = df['release_date'].apply(lambda x: x[:4])

df[['title', 'year']].to_csv('titles.csv', index=False)
