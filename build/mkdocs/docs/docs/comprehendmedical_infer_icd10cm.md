<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_infer_icd10cm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## InferICD10CM detects medical conditions as entities listed in a patient record and links those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the Centers for Disease Control

### Description

InferICD10CM detects medical conditions as entities listed in a patient
record and links those entities to normalized concept identifiers in the
ICD-10-CM knowledge base from the Centers for Disease Control. Amazon
Comprehend Medical only detects medical entities in English language
texts.

### Usage

    comprehendmedical_infer_icd10cm(Text)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehendmedical_infer_icd10cm_:_Text">Text</code></td>
<td><p>[required] The input text used for analysis. The input for
InferICD10CM is a string from 1 to 10000 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entities = list(
        list(
          Id = 123,
          Text = "string",
          Category = "MEDICAL_CONDITION",
          Type = "DX_NAME"|"TIME_EXPRESSION",
          Score = 123.0,
          BeginOffset = 123,
          EndOffset = 123,
          Attributes = list(
            list(
              Type = "ACUITY"|"DIRECTION"|"SYSTEM_ORGAN_SITE"|"QUALITY"|"QUANTITY"|"TIME_TO_DX_NAME"|"TIME_EXPRESSION",
              Score = 123.0,
              RelationshipScore = 123.0,
              Id = 123,
              BeginOffset = 123,
              EndOffset = 123,
              Text = "string",
              Traits = list(
                list(
                  Name = "NEGATION"|"DIAGNOSIS"|"SIGN"|"SYMPTOM"|"PERTAINS_TO_FAMILY"|"HYPOTHETICAL"|"LOW_CONFIDENCE",
                  Score = 123.0
                )
              ),
              Category = "DX_NAME"|"TIME_EXPRESSION",
              RelationshipType = "OVERLAP"|"SYSTEM_ORGAN_SITE"
            )
          ),
          Traits = list(
            list(
              Name = "NEGATION"|"DIAGNOSIS"|"SIGN"|"SYMPTOM"|"PERTAINS_TO_FAMILY"|"HYPOTHETICAL"|"LOW_CONFIDENCE",
              Score = 123.0
            )
          ),
          ICD10CMConcepts = list(
            list(
              Description = "string",
              Code = "string",
              Score = 123.0
            )
          )
        )
      ),
      PaginationToken = "string",
      ModelVersion = "string"
    )

### Request syntax

    svc$infer_icd10cm(
      Text = "string"
    )
