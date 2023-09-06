![Screenshot from 2023-09-06 11-46-55](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/04c1e41d-9290-4ec9-b5bf-1bfad8c19a91)

After doing calculation of TM like divide by protein sequence length and multiply it by 10

![Screenshot from 2023-09-06 11-48-17](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/0cdd45dd-f66d-448e-b976-56cdf6de1cad)

Features we extracted from protein sequence 

AAC: amino acid composition descriptors (20)

DPC: dipeptide composition descriptors (400)

TPC: tri-peptide composition descriptors (8000)

MBauto: Normalized Moreau-Broto autocorrelation descriptors (depend on the given properties, the default is 240)

Moranauto: Moran autocorrelation descriptors(depend on the given properties, the default is 240)

Gearyauto: Geary autocorrelation descriptors(depend on the given properties, the default is 240)

CTD: Composition, Transition, Distribution descriptors (CTD) (21+21+105=147)

SOCN: sequence order coupling numbers (depend on the choice of maxlag, the default is 60)

QSO: quasi-sequence order descriptors (depend on the choice of maxlag, the default is 100)

PAAC: pseudo amino acid composition descriptors (depend on the choice of lamda, the default is 50)

APAAC: amphiphilic pseudo amino acid composition descriptors(depend on the choice of lamda, the default is 50)

Noramlization calculation we used

new_value = Melting Temprature / Length of Protein _sequence *10

we take Tm value and divided it by length of its protein sequence and then multiply it by 10
