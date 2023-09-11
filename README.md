The melting temperature or Tm is a critical parameter that characterizes its stability and structural integrity. This temperature represents the point at which the protein begins to denature or lose its native three-dimensional configuration, mostly due to the disruption of non-covalent bonds such as hydrogen bonds, hydrophobic interactions, and electrostatic forces that maintain its folded state.

The Tm can vary among different proteins due to change in protein's amino acid composition and sequence. Utilizing this fact we have developed this machine learning model to predict Tm from protein sequence. The developed model is based on Convolutional Neural Network (CNN), trained on descriptors obtained from protein sequence encoding and experimental Tm values.

## Dataset
A dataset with protein Uniprot ID, sequence and Tm in degree celcius was obtained from [ProTstab2](http://8.133.174.28:8000/ProTstab2/). This data set was consist of a total of 34913 data points. The dataset was curated, cleaned and then divided into three parts for training, testing and validation. The data set is consist of a wider range Tm values, the frequency distribution of which is represented in fig.1.

![Screenshot from 2023-09-06 13-38-39](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/5b74bb45-0dc2-4b7a-a2de-4c799e109498)

fig.1 Tm value data distribution

Before proceeding with the model training we performed normalization of the dataset by dividing the Tm values with the length of the corresponding protein sequence. This normalization enhanced the specificity of datapoints towards their corresponding protein sequence. Post normalization data was visualized and is represented in fig. 2. 

Equation followed for normalization:

new_value = (Melting Temprature / Length of Protein sequence) * 10; where, new_value is the normalized value obtained. 

![image](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/7bb36025-c4ab-44a9-a3e5-7b647c6c3475)

fig.2 Plotting of data on their sequence lentgh

## Encoder and Model
To encode the protein sequences [propy3](https://github.com/MartinThoma/propy3/tree/master) was used which calculates eleven different descriptors for each sequence. Following are the Desriptors/Features extracted for protein sequences.
    
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

Convolutional Neural Network (CNN) based predictive model was developed and used for prediction of Tm values from protein sequences. The developed model yield high coefficient of determination (R^2) and mean squared error (MSE), values of which are given in Table 1.

Table 1: R^2 and MSE of the developed model
| --- | ---- |
| R^2 | 0.92 |
| --- | ---- |
| MSE | 0.15 |
| --- | ---- |

![image](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/4dd5ba95-8a04-4dea-bf70-f6f003336401)

![image](https://github.com/Growdeatechnology/Tm_prediction/assets/72397529/08305973-f2e8-46ea-a9c8-aa17f4cba67d)

