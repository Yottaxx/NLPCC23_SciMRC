# [NLPCC 2023 Shared Task 2: Multi-perspective Scientific Machine Reading Comprehension](http://tcci.ccf.org.cn/conference/2023/cfpt.php)

## Contents

- [Overview](#overview)
- [Dataset](#dataset)

## Overview

Scientific machine reading comprehension (SMRC) aims to understand scientific texts through interactions with humans by given questions. In this task, questions about scientific texts include perspectives from beginners, students and experts. It requires different levels of understanding of scientific texts. 
- The entire dataset comes from multiple perspectives, including beginner perspective (machine generation), student perspective (manual annotation), and expert perspective (from openreview).

## Important Dates

- 2023/03/15：registration open
- 2023/04/06：release of detailed task guidelines & training data
- 2023/05/05：registration deadline
- 2023/05/21：release of test data
- 2023/05/31：participants’ results submission deadline
- 2023/06/10：evaluation results release and call for system reports and conference paper

## Dataset

<!-- The data is available [here]().  -->
The train & validation dataset includes 4873 qa pairs: https://drive.google.com/file/d/1ewbgZOy6CEpjzoVxnkQPPVItj6yslUi1/view?usp=sharing 

The test dataset includes 1169 qa pairs: 
https://drive.google.com/file/d/1N2fVmr-InkIA8rdEoXrtIj6ENmDaGkrw/view
## Submission & Evaluation
We have ziped the submission format and test set into a zip file.
For submission, the following materials should be packaged as one `zip` file and sent to 3220201024@bit.edu.cn.

1. Answer submission. Submission format should follow the instruction of https://drive.google.com/file/d/1N2fVmr-InkIA8rdEoXrtIj6ENmDaGkrw/view (answer.json).
2. Reproducible code.
3. Usage document.

### Data Format

    {"id": '1912.01214', 
     "title": 'Cross-lingual Pre-training Based Transfer for Zero-shot Neural Machine Translation', 
     "abstract": Transfer learning between different language pairs has shown its effectiveness for Neural Machine Translation (NMT) in low-resource scenario...',  
     "full_text":[
        {
            "section_name":'introduction',
            "paragraph":[
                "Although Neural Machine Translation (NMT) has dominated recent research on translation tasks BIBREF0...",
                ...
            ]
        }
        ...
     ]
     "qas":[
        {
            "question": "What\'s the limitation of methods based on transfer learning?",
            "questionType": "先前工作不足",
            "annotateType": '3',
            "questionId": '1592',
            "answers":[
                {
                    "answer":{
                        "unanswerable":False,
                        "answerType":"总结概括",
                        "free_form_answer":'Although they are successful in the low-resource scene, they have limited effects in zero-shot translation.'
                        "evidence":[
                            'In recent years, zero-shot translation in NMT has attracted widespread attention in academic research. Existing methods are mainly divided into four categories: pivot-based method, transfer learning, multilingual NMT, and unsupervised NMT.'
                            ...
                        ]
                        "evidenceAnnotate":[
                            "Transfer Learning is firstly introduced for NMT by Zoph et al. (2016), which leverages a high-resource parent model to initialize the low-resource child model. On this basis, Nguyen and Chiang (2017) and Kocmi and Bojar (2018) use shared vocabularies for source/target language to improve transfer learning, while Kim, Gao, and Ney (2019) relieve the vocabulary mismatch by mainly using cross-lingual word embedding. Although these methods are successful in the low-resource scene, they have limited effects in zero-shot translation."
                        ]
                        "highlighted_evidence":[
                            "Transfer Learning is firstly introduced for NMT by Zoph et al. (2016), which leverages a high-resource parent model to initialize the low-resource child model. On this basis, Nguyen and Chiang (2017) and Kocmi and Bojar (2018) use shared vocabularies for source/target language to improve transfer learning, while Kim, Gao, and Ney (2019) relieve the vocabulary mismatch by mainly using cross-lingual word embedding. Although these methods are successful in the low-resource scene, they have limited effects in zero-shot translation."
                        ]
                    }
                }
            ]

        }
        ...
     ]
     "figures_and_tables": [
        {
            "file":'figure1.png',
            "caption":'Figure 1: The circle and triangle dots represent source sentences in different language l1 and l2, and the square dots means target sentences in language l3. A sample of translation pairs is connected by the dashed line. We would like to force each of the translation pairs has the same latent representation as the right part of the figure so as to transfer l1 → l3 model directly to l2 → l3 model.'
        }
        ...
     ]
    }


### Baseline

1. Translate our dataset into text-to-text format.
2. bash run.sh


## Participants

| Team ID | System Name        |
| ------- | ------------------ |
| 1       | Evay Info AI Team  |
| 2       | Dependency Graphs For Reading Comprehension |
| 3       | OUC_NLP |
| 4       | 狼叼着羊 |
| 5       | Emotional damage |
| 6       | Mirror |
| 7       | huawei_tsc_zeus |
| 8       | Lastonestands |
| 9       | cisl-nlp |
| 10       | CUHK_SU |
| 11       | its666 |
| 12       | zutnlp-wujiahao |
| 13       | MPSMRC_cup |
| 14       | IMU_NLP |
| 15       | 你猜对不队 |
| 16       | PIE |


## 其他细节
1. 使用Free_form_answer这个字段作为最终答案
2. Metrics计算方式为RougeL
3. Unanswerable仍然需要回答，但是由于其unanswerable所以在文中无对应证据，这类问题也会加入metrics计算中
4. Annotate type 是供标注使用的特殊字段，区分不同的标注方式
5. Evidence 提供标注的原始证据（evidence Annotate）以及检索的证据文档
