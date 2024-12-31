# **Similarity Metrics Pipeline**
### *Comparing Text Descriptions Using BLEU, WMD, and Cosine Similarities*

---

## **Overview**

This repository provides a pipeline for calculating pairwise text similarities between biological sample and study descriptions. Given the ground truth labels for the samples, the pipeline computes similarities using the following methods:

- **BLEU Score (Bilingual Evaluation Understudy)**  
- **Word Mover's Distance (WMD)**  
- **Cosine Similarity**  

The workflow ensures comparisons occur only between samples from different experiments (GSEs).  

The results are used to evaluate how well these similarity metrics reflect the **true relationships between samples and studies**.

Note: I am starting with BLEU score calculations and will implement the rest of the mertics later
---

## **Project Structure (current)**

```plaintext
project_repo/
├── data/                            # Input and processed data
│   ├── processed_descriptions.tsv   # Preprocessed sample descriptions
│   └── bleu_scores.csv.gz           # BLEU similarity scores
├── bin/                                  # Executable scripts 
│   ├── tissue_labels_CL:0000000.csv     # tissue input file
│  
├── scripts/                         # Python scripts for similarity calculations
│   ├── calculate_bleu_scores.py          # Calculates BLEU scores
│   ├── filter_ground_truth_pairs_bleu.py # Filters BLEU pairs based on ground truth labels
│
├── run/                                  # Executable scripts 
│   ├── submit_bleu_job.sbatch            # SLURM script for BLEU similarity job arrays
│   └── test_job_tissue_CL0000000.sbatch  # SLURM script for filter_ground_truth_pairs_bleu.py job submission            
│
├── results/                         # Output results
│   └── bleu_scores_with_category.csv.gz   # final product: Ground truth filtered BLEU pairs
│
└── README.md                        # Project documentation (this file)

```
