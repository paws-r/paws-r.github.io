<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_detect_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DetectEntities operation is deprecated

### Description

The `detect_entities` operation is deprecated. You should use the
`detect_entities_v2` operation instead.

Inspects the clinical text for a variety of medical entities and returns
specific information about them such as entity category, location, and
confidence score on that information .

### Usage

    comprehendmedical_detect_entities(Text)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehendmedical_detect_entities_:_Text">Text</code></td>
<td><p>[required] A UTF-8 text string containing the clinical content
being examined for entities. Each string must contain fewer than 20,000
bytes of characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entities = list(
        list(
          Id = 123,
          BeginOffset = 123,
          EndOffset = 123,
          Score = 123.0,
          Text = "string",
          Category = "MEDICATION"|"MEDICAL_CONDITION"|"PROTECTED_HEALTH_INFORMATION"|"TEST_TREATMENT_PROCEDURE"|"ANATOMY"|"TIME_EXPRESSION"|"BEHAVIORAL_ENVIRONMENTAL_SOCIAL",
          Type = "NAME"|"DX_NAME"|"DOSAGE"|"ROUTE_OR_MODE"|"FORM"|"FREQUENCY"|"DURATION"|"GENERIC_NAME"|"BRAND_NAME"|"STRENGTH"|"RATE"|"ACUITY"|"TEST_NAME"|"TEST_VALUE"|"TEST_UNITS"|"TEST_UNIT"|"PROCEDURE_NAME"|"TREATMENT_NAME"|"DATE"|"AGE"|"CONTACT_POINT"|"PHONE_OR_FAX"|"EMAIL"|"IDENTIFIER"|"ID"|"URL"|"ADDRESS"|"PROFESSION"|"SYSTEM_ORGAN_SITE"|"DIRECTION"|"QUALITY"|"QUANTITY"|"TIME_EXPRESSION"|"TIME_TO_MEDICATION_NAME"|"TIME_TO_DX_NAME"|"TIME_TO_TEST_NAME"|"TIME_TO_PROCEDURE_NAME"|"TIME_TO_TREATMENT_NAME"|"AMOUNT"|"GENDER"|"RACE_ETHNICITY"|"ALLERGIES"|"TOBACCO_USE"|"ALCOHOL_CONSUMPTION"|"REC_DRUG_USE",
          Traits = list(
            list(
              Name = "SIGN"|"SYMPTOM"|"DIAGNOSIS"|"NEGATION"|"PERTAINS_TO_FAMILY"|"HYPOTHETICAL"|"LOW_CONFIDENCE"|"PAST_HISTORY"|"FUTURE",
              Score = 123.0
            )
          ),
          Attributes = list(
            list(
              Type = "NAME"|"DX_NAME"|"DOSAGE"|"ROUTE_OR_MODE"|"FORM"|"FREQUENCY"|"DURATION"|"GENERIC_NAME"|"BRAND_NAME"|"STRENGTH"|"RATE"|"ACUITY"|"TEST_NAME"|"TEST_VALUE"|"TEST_UNITS"|"TEST_UNIT"|"PROCEDURE_NAME"|"TREATMENT_NAME"|"DATE"|"AGE"|"CONTACT_POINT"|"PHONE_OR_FAX"|"EMAIL"|"IDENTIFIER"|"ID"|"URL"|"ADDRESS"|"PROFESSION"|"SYSTEM_ORGAN_SITE"|"DIRECTION"|"QUALITY"|"QUANTITY"|"TIME_EXPRESSION"|"TIME_TO_MEDICATION_NAME"|"TIME_TO_DX_NAME"|"TIME_TO_TEST_NAME"|"TIME_TO_PROCEDURE_NAME"|"TIME_TO_TREATMENT_NAME"|"AMOUNT"|"GENDER"|"RACE_ETHNICITY"|"ALLERGIES"|"TOBACCO_USE"|"ALCOHOL_CONSUMPTION"|"REC_DRUG_USE",
              Score = 123.0,
              RelationshipScore = 123.0,
              RelationshipType = "EVERY"|"WITH_DOSAGE"|"ADMINISTERED_VIA"|"FOR"|"NEGATIVE"|"OVERLAP"|"DOSAGE"|"ROUTE_OR_MODE"|"FORM"|"FREQUENCY"|"DURATION"|"STRENGTH"|"RATE"|"ACUITY"|"TEST_VALUE"|"TEST_UNITS"|"TEST_UNIT"|"DIRECTION"|"SYSTEM_ORGAN_SITE"|"AMOUNT",
              Id = 123,
              BeginOffset = 123,
              EndOffset = 123,
              Text = "string",
              Category = "MEDICATION"|"MEDICAL_CONDITION"|"PROTECTED_HEALTH_INFORMATION"|"TEST_TREATMENT_PROCEDURE"|"ANATOMY"|"TIME_EXPRESSION"|"BEHAVIORAL_ENVIRONMENTAL_SOCIAL",
              Traits = list(
                list(
                  Name = "SIGN"|"SYMPTOM"|"DIAGNOSIS"|"NEGATION"|"PERTAINS_TO_FAMILY"|"HYPOTHETICAL"|"LOW_CONFIDENCE"|"PAST_HISTORY"|"FUTURE",
                  Score = 123.0
                )
              )
            )
          )
        )
      ),
      UnmappedAttributes = list(
        list(
          Type = "MEDICATION"|"MEDICAL_CONDITION"|"PROTECTED_HEALTH_INFORMATION"|"TEST_TREATMENT_PROCEDURE"|"ANATOMY"|"TIME_EXPRESSION"|"BEHAVIORAL_ENVIRONMENTAL_SOCIAL",
          Attribute = list(
            Type = "NAME"|"DX_NAME"|"DOSAGE"|"ROUTE_OR_MODE"|"FORM"|"FREQUENCY"|"DURATION"|"GENERIC_NAME"|"BRAND_NAME"|"STRENGTH"|"RATE"|"ACUITY"|"TEST_NAME"|"TEST_VALUE"|"TEST_UNITS"|"TEST_UNIT"|"PROCEDURE_NAME"|"TREATMENT_NAME"|"DATE"|"AGE"|"CONTACT_POINT"|"PHONE_OR_FAX"|"EMAIL"|"IDENTIFIER"|"ID"|"URL"|"ADDRESS"|"PROFESSION"|"SYSTEM_ORGAN_SITE"|"DIRECTION"|"QUALITY"|"QUANTITY"|"TIME_EXPRESSION"|"TIME_TO_MEDICATION_NAME"|"TIME_TO_DX_NAME"|"TIME_TO_TEST_NAME"|"TIME_TO_PROCEDURE_NAME"|"TIME_TO_TREATMENT_NAME"|"AMOUNT"|"GENDER"|"RACE_ETHNICITY"|"ALLERGIES"|"TOBACCO_USE"|"ALCOHOL_CONSUMPTION"|"REC_DRUG_USE",
            Score = 123.0,
            RelationshipScore = 123.0,
            RelationshipType = "EVERY"|"WITH_DOSAGE"|"ADMINISTERED_VIA"|"FOR"|"NEGATIVE"|"OVERLAP"|"DOSAGE"|"ROUTE_OR_MODE"|"FORM"|"FREQUENCY"|"DURATION"|"STRENGTH"|"RATE"|"ACUITY"|"TEST_VALUE"|"TEST_UNITS"|"TEST_UNIT"|"DIRECTION"|"SYSTEM_ORGAN_SITE"|"AMOUNT",
            Id = 123,
            BeginOffset = 123,
            EndOffset = 123,
            Text = "string",
            Category = "MEDICATION"|"MEDICAL_CONDITION"|"PROTECTED_HEALTH_INFORMATION"|"TEST_TREATMENT_PROCEDURE"|"ANATOMY"|"TIME_EXPRESSION"|"BEHAVIORAL_ENVIRONMENTAL_SOCIAL",
            Traits = list(
              list(
                Name = "SIGN"|"SYMPTOM"|"DIAGNOSIS"|"NEGATION"|"PERTAINS_TO_FAMILY"|"HYPOTHETICAL"|"LOW_CONFIDENCE"|"PAST_HISTORY"|"FUTURE",
                Score = 123.0
              )
            )
          )
        )
      ),
      PaginationToken = "string",
      ModelVersion = "string"
    )

### Request syntax

    svc$detect_entities(
      Text = "string"
    )
