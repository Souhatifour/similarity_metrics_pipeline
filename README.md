# **Similarity Metrics Pipeline**
### *Comparing Text Descriptions Using BLEU, WMD, and Cosine Similarities*

---

## **Overview**

This repository provides a pipeline for calculating pairwise text similarities between biological sample and study descriptions. Given the ground truth labels for the samples, the pipeline computes similarities using the following methods:

- **BLEU Score** (Bilingual Evaluation Understudy)  
- **Word Mover's Distance (WMD)**  
- **Cosine Similarity**  

The workflow ensures comparisons occur only between samples from different experiments (GSEs).  

The results are used to evaluate how well these similarity metrics reflect the **true relationships between samples and studies**.

---

## **Project Structure**

```plaintext
project_repo/
├── data/                            # Input and processed data
│   ├── processed_descriptions.tsv   # Preprocessed sample descriptions
│   └── similarity_results/          # Output folder for similarity scores
│
├── scripts/                         # Python scripts for similarity calculations
│   ├── calculate_bleu_scores.py          # Calculates BLEU scores
│   ├── filter_ground_truth_pairs_bleu.py # Filters BLEU pairs based on ground truth labels
│
├── bin/                             # Executable scripts and tools
│   ├── submit_bleu_job.sbatch       # SLURM script for BLEU similarity job arrays
│   └── readme.txt                   # Details about external tools and their setup
│
├── results/                         # Output results
│   ├── bleu_scores.csv.gz           # BLEU similarity scores
│   ├── filtered_pairs_bleu.csv.gz   # Ground truth filtered BLEU pairs
│
└── README.md                        # Project documentation (this file)
