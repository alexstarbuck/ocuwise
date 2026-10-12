---
title: "OcuWise: Dev — Product, Technical, Grant Requirements"
tags: []
url: ""
date_created: 2026-02-26 15:22
citekey:
author:
year:
type:
---
## 1. THE SCAFFOLDING

### Core platform (already exists)

- Auth;
- Patients;
- Records;
- Workflows;
- Billing;
- Modules;
- Integrations;

### OcuWise "module"

#### Clinical Intelligence Layer

1. Image AI;
2. Risk engine;
3. Recommendation engine;
4. Trend analysis;
5. Alerts;

#### Automation Layer

6. Voice assistant;
7. Call assistant;
8. Documentation automation;

---
## 2. TECH DELIVERABLES
### 1. Automatic analysis of eye images (OCT / fundus)

Compliance requirement:

- Ability to upload image;
- AI model processes it;
- Returns structured output;
- Display result;

That’s enough for TRL progression.
Possible approaches:

- Pretrained medical models (transfer learning);
- External inference API;
- Fine-tuned open datasets;

You don’t need FDA-grade accuracy.

---
### 2. Personalized risk calculation

This is much easier than imaging. You already have:

- longitudinal data;
- measurements;
- history;

You can implement:

- statistical risk scoring;
- ML regression model;
- rules + ML hybrid;

Even a well-designed scoring algorithm satisfies the grant.

---
### 3. Structured recommendations

This can initially be:

- clinical rule engine;
- guideline mapping:
- LLM assistance layer;

Example:

	IF OCT thinning trend > threshold → recommend glaucoma screening 

---
### 4. HL7 / FHIR integration

Minimal compliance:

- ability to export/import via FHIR resources
- API endpoints

Even partial implementation counts.

---
### 5. Intuitive UI

You already have 70% of this.

Grant justifies:

- redesign;
- usability testing;
- refinement;

---
### 6. Digital records + reports

Already exists in your system. Just needs polishing.

---
## 3. MODELS TO LEVERAGE
### Fundus / OCT Models

#### Classical CNN architectures

- ResNet;
- EfficientNet;
- DenseNet;
- U-Net (segmentation);
- Vision Transformers (ViT);

### Existing ophthalmology datasets

- EyePACS;
- Messidor;
- OCT2017 dataset;
- REFUGE (glaucoma);
- APTOS;
- Duke OCT;

### Practical strategy

**Best approach for small team:**

	Transfer learning + fine tuning

**Pipeline**:

1. Pretrained CNN backbone;
2. Fine-tune on ophthalmology dataset;
3. Export inference model;
4. Integrate into backend;

**Frameworks**:

- PyTorch;
- TensorFlow;
- MONAI (medical imaging — very good);
- OpenCV preprocessing;

---

## Related

[OcuWise MoC](00-funding-ocuwise-moc.md),