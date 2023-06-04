<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_infer_snomedct</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## InferSNOMEDCT detects possible medical concepts as entities and links them to codes from the Systematized Nomenclature of Medicine, Clinical Terms (SNOMED-CT) ontology

### Description

InferSNOMEDCT detects possible medical concepts as entities and links
them to codes from the Systematized Nomenclature of Medicine, Clinical
Terms (SNOMED-CT) ontology

### Usage

    comprehendmedical_infer_snomedct(Text)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehendmedical_infer_snomedct_:_Text">Text</code></td>
<td><p>[required] The input text to be analyzed using InferSNOMEDCT. The
text should be a string with 1 to 10000 characters.</p></td>
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
          Category = "MEDICAL_CONDITION"|"ANATOMY"|"TEST_TREATMENT_PROCEDURE",
          Type = "DX_NAME"|"TEST_NAME"|"PROCEDURE_NAME"|"TREATMENT_NAME",
          Score = 123.0,
          BeginOffset = 123,
          EndOffset = 123,
          Attributes = list(
            list(
              Category = "MEDICAL_CONDITION"|"ANATOMY"|"TEST_TREATMENT_PROCEDURE",
              Type = "ACUITY"|"QUALITY"|"DIRECTION"|"SYSTEM_ORGAN_SITE"|"TEST_VALUE"|"TEST_UNIT",
              Score = 123.0,
              RelationshipScore = 123.0,
              RelationshipType = "ACUITY"|"QUALITY"|"TEST_VALUE"|"TEST_UNITS"|"DIRECTION"|"SYSTEM_ORGAN_SITE",
              Id = 123,
              BeginOffset = 123,
              EndOffset = 123,
              Text = "string",
              Traits = list(
                list(
                  Name = "NEGATION"|"DIAGNOSIS"|"SIGN"|"SYMPTOM"|"PERTAINS_TO_FAMILY"|"HYPOTHETICAL"|"LOW_CONFIDENCE"|"PAST_HISTORY"|"FUTURE",
                  Score = 123.0
                )
              ),
              SNOMEDCTConcepts = list(
                list(
                  Description = "string",
                  Code = "string",
                  Score = 123.0
                )
              )
            )
          ),
          Traits = list(
            list(
              Name = "NEGATION"|"DIAGNOSIS"|"SIGN"|"SYMPTOM"|"PERTAINS_TO_FAMILY"|"HYPOTHETICAL"|"LOW_CONFIDENCE"|"PAST_HISTORY"|"FUTURE",
              Score = 123.0
            )
          ),
          SNOMEDCTConcepts = list(
            list(
              Description = "string",
              Code = "string",
              Score = 123.0
            )
          )
        )
      ),
      PaginationToken = "string",
      ModelVersion = "string",
      SNOMEDCTDetails = list(
        Edition = "string",
        Language = "string",
        VersionDate = "string"
      ),
      Characters = list(
        OriginalTextCharacters = 123
      )
    )

### Request syntax

    svc$infer_snomedct(
      Text = "string"
    )
