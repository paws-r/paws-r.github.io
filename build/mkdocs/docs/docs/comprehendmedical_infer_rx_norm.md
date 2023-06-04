<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_infer_rx_norm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## InferRxNorm detects medications as entities listed in a patient record and links to the normalized concept identifiers in the RxNorm database from the National Library of Medicine

### Description

InferRxNorm detects medications as entities listed in a patient record
and links to the normalized concept identifiers in the RxNorm database
from the National Library of Medicine. Amazon Comprehend Medical only
detects medical entities in English language texts.

### Usage

    comprehendmedical_infer_rx_norm(Text)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehendmedical_infer_rx_norm_:_Text">Text</code></td>
<td><p>[required] The input text used for analysis. The input for
InferRxNorm is a string from 1 to 10000 characters.</p></td>
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
          Category = "MEDICATION",
          Type = "BRAND_NAME"|"GENERIC_NAME",
          Score = 123.0,
          BeginOffset = 123,
          EndOffset = 123,
          Attributes = list(
            list(
              Type = "DOSAGE"|"DURATION"|"FORM"|"FREQUENCY"|"RATE"|"ROUTE_OR_MODE"|"STRENGTH",
              Score = 123.0,
              RelationshipScore = 123.0,
              Id = 123,
              BeginOffset = 123,
              EndOffset = 123,
              Text = "string",
              Traits = list(
                list(
                  Name = "NEGATION",
                  Score = 123.0
                )
              )
            )
          ),
          Traits = list(
            list(
              Name = "NEGATION",
              Score = 123.0
            )
          ),
          RxNormConcepts = list(
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

    svc$infer_rx_norm(
      Text = "string"
    )
