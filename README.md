# Palestra Evolution Up · Oulx

Sito web statico (HTML + CSS, senza build) della palestra **Evolution Up** di Oulx, in Alta Val Susa.

- `index.html` — pagina unica: hero, servizi, foto, la palestra, corsi, fisioterapia, abbonamenti, orari, contatti, mappa
- `style.css` — stile minimale (nero / bianco / rosso del logo)
- `assets/` — foto della palestra
- `Dockerfile` + `nginx.conf.template` — per il deploy su Railway (o qualsiasi host Docker)

## In locale

```bash
python3 -m http.server 8089
```

e apri http://localhost:8089. Oppure con Docker, uguale a come gira su Railway:

```bash
docker build -t evolutionup . && docker run --rm -p 8089:8080 evolutionup
```

## Deploy su Railway

1. New Project → Deploy from GitHub repo → `evolutionup-oulx`.
2. Railway rileva il `Dockerfile` da solo (vedi `railway.json`). Non servono variabili: nginx legge `$PORT`.
3. Settings → Networking → Generate Domain (o collega il dominio del gym).

Ogni push su `main` rideploya. Lo stesso branch è pubblicato anche su GitHub Pages.
