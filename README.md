![Screenshot from 2023-09-06 13-38-39](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/5b74bb45-0dc2-4b7a-a2de-4c799e109498)

fig.1 Tm value data distribution

After doing calculation of TM like divide by protein sequence length and multiply it by 10

![image](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/7bb36025-c4ab-44a9-a3e5-7b647c6c3475)

fig.2 Plotting of data on their sequence lentgh

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

![Screenshot from 2023-09-06 13-58-38](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/9e6ccaea-7a2e-43f5-a0e6-d25716d74a7e)


we take Tm value and divided it by length of its protein sequence and then multiply it by 10
