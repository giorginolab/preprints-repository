# Matching incomplete time series with dynamic time warping: an algorithm and an application to post-stroke rehabilitation

[Preprint](https://raw.githubusercontent.com/giorginolab/matching_incomplete_timeseries_preprint/master/Giorgino_AIIM2009_preprint.pdf) of the paper... 

Paolo Tormene, Toni Giorgino, Silvana Quaglini, Mario Stefanelli, 
*Matching incomplete time series with dynamic time warping: an algorithm and an application to post-stroke rehabilitation*, 
Artificial Intelligence in Medicine, 
Volume 45, Issue 1, 2009, Pages 11-34, 
ISSN 0933-3657, [doi:10.1016/j.artmed.2008.11.007](https://doi.org/10.1016/j.artmed.2008.11.007).


# Abstract

## Objective

The purpose of this study was to assess the performance of a real-time (“open-end”) version of the dynamic time warping (DTW) algorithm for the recognition of motor exercises. Given a possibly incomplete input stream of data and a reference time series, the open-end DTW algorithm computes both the size of the prefix of reference which is best matched by the input, and the dissimilarity between the matched portions. The algorithm was used to provide real-time feedback to neurological patients undergoing motor rehabilitation.

## Methods and materials

We acquired a dataset of multivariate time series from a sensorized long-sleeve shirt which contains 29 strain sensors distributed on the upper limb. Seven typical rehabilitation exercises were recorded in several variations, both correctly and incorrectly executed, and at various speeds, totaling a data set of 840 time series. Nearest-neighbour classifiers were built according to the outputs of open-end DTW alignments and their global counterparts on exercise pairs. The classifiers were also tested on well-known public datasets from heterogeneous domains.

## Results

Nonparametric tests show that (1) on full time series the two algorithms achieve the same classification accuracy (p-value =0.32); (2) on partial time series, classifiers based on open-end DTW have a far higher accuracy (κ=0.898 versus κ=0.447;p<10−5); and (3) the prediction of the matched fraction follows closely the ground truth (root mean square <10%). The results hold for the motor rehabilitation and the other datasets tested, as well.

## Conclusions

The open-end variant of the DTW algorithm is suitable for the classification of truncated quantitative time series, even in the presence of noise. Early recognition and accurate class prediction can be achieved, provided that enough variance is available over the time span of the reference. Therefore, the proposed technique expands the use of DTW to a wider range of applications, such as real-time biofeedback systems.

**Keywords** Dynamic programming; Timeseries classification; Nearest neighbour; Motor rehabilitation; Real-time feedback; Post-stroke; Dynamic time warping; Subsequence matching; Wearable sensors


# Dataset

The data accompanying this paper is at

Tormene, Paolo; Giorgino, Toni; Quaglini, Silvana; Stefanelli, Mario. 
*A multivariate dataset obtained recording the stretch of  various segments of the fabric of a sensorized garment while executing several rehabilitation exercises.* [doi:10.5281/zenodo.11229](https://doi.org/10.5281/zenodo.11229) 

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.11229.svg)](https://doi.org/10.5281/zenodo.11229)

# Bibtex

```

@article{tormene_matching_2009,
	title = {Matching incomplete time series with dynamic time warping: an algorithm and an application to post-stroke rehabilitation},
	volume = {45},
	issn = {0933-3657},
	shorttitle = {Matching incomplete time series with dynamic time warping},
	url = {http://www.sciencedirect.com/science/article/pii/S0933365708001772},
	doi = {10.1016/j.artmed.2008.11.007},
	abstract = {Objective 
The purpose of this study was to assess the performance of a real-time (“open-end”) version of the dynamic time warping (DTW) algorithm for the recognition of motor exercises. Given a possibly incomplete input stream of data and a reference time series, the open-end DTW algorithm computes both the size of the prefix of reference which is best matched by the input, and the dissimilarity between the matched portions. The algorithm was used to provide real-time feedback to neurological patients undergoing motor rehabilitation. 
Methods and materials 
We acquired a dataset of multivariate time series from a sensorized long-sleeve shirt which contains 29 strain sensors distributed on the upper limb. Seven typical rehabilitation exercises were recorded in several variations, both correctly and incorrectly executed, and at various speeds, totaling a data set of 840 time series. Nearest-neighbour classifiers were built according to the outputs of open-end DTW alignments and their global counterparts on exercise pairs. The classifiers were also tested on well-known public datasets from heterogeneous domains. 
Results 
Nonparametric tests show that (1) on full time series the two algorithms achieve the same classification accuracy (p-value = 0.32 ); (2) on partial time series, classifiers based on open-end DTW have a far higher accuracy ( κ = 0.898 versus κ = 0.447 ; p \&lt; 1 0 − 5 ); and (3) the prediction of the matched fraction follows closely the ground truth (root mean square \&lt; 10 \% ). The results hold for the motor rehabilitation and the other datasets tested, as well. 
Conclusions 
The open-end variant of the DTW algorithm is suitable for the classification of truncated quantitative time series, even in the presence of noise. Early recognition and accurate class prediction can be achieved, provided that enough variance is available over the time span of the reference. Therefore, the proposed technique expands the use of DTW to a wider range of applications, such as real-time biofeedback systems.},
	number = {1},
	urldate = {2013-07-05},
	journal = {Artificial Intelligence in Medicine},
	author = {Tormene, Paolo and Giorgino, Toni and Quaglini, Silvana and Stefanelli, Mario},
	month = jan,
	year = {2009},
	note = {WOS:000264630300002
2-s2.0-60449118655},
	keywords = {Clinical Data Mining, Dynamic programming, Timeseries classification, Nearest neighbour, Motor rehabilitation, Real-time feedback, Post-stroke, Dynamic time warping, Subsequence matching, Wearable sensors, HHH},
	pages = {11--34}
}
```


