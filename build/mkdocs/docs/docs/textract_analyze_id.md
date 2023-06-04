<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_analyze_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Analyzes identity documents for relevant information

### Description

Analyzes identity documents for relevant information. This information
is extracted and returned as `IdentityDocumentFields`, which records
both the normalized field and value of the extracted text. Unlike other
Amazon Textract operations, `analyze_id` doesn't return any Geometry
data.

### Usage

    textract_analyze_id(DocumentPages)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="textract_analyze_id_:_DocumentPages">DocumentPages</code></td>
<td><p>[required] The document being passed to AnalyzeID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityDocuments = list(
        list(
          DocumentIndex = 123,
          IdentityDocumentFields = list(
            list(
              Type = list(
                Text = "string",
                NormalizedValue = list(
                  Value = "string",
                  ValueType = "DATE"
                ),
                Confidence = 123.0
              ),
              ValueDetection = list(
                Text = "string",
                NormalizedValue = list(
                  Value = "string",
                  ValueType = "DATE"
                ),
                Confidence = 123.0
              )
            )
          ),
          Blocks = list(
            list(
              BlockType = "KEY_VALUE_SET"|"PAGE"|"LINE"|"WORD"|"TABLE"|"CELL"|"SELECTION_ELEMENT"|"MERGED_CELL"|"TITLE"|"QUERY"|"QUERY_RESULT"|"SIGNATURE"|"TABLE_TITLE"|"TABLE_FOOTER",
              Confidence = 123.0,
              Text = "string",
              TextType = "HANDWRITING"|"PRINTED",
              RowIndex = 123,
              ColumnIndex = 123,
              RowSpan = 123,
              ColumnSpan = 123,
              Geometry = list(
                BoundingBox = list(
                  Width = 123.0,
                  Height = 123.0,
                  Left = 123.0,
                  Top = 123.0
                ),
                Polygon = list(
                  list(
                    X = 123.0,
                    Y = 123.0
                  )
                )
              ),
              Id = "string",
              Relationships = list(
                list(
                  Type = "VALUE"|"CHILD"|"COMPLEX_FEATURES"|"MERGED_CELL"|"TITLE"|"ANSWER"|"TABLE"|"TABLE_TITLE"|"TABLE_FOOTER",
                  Ids = list(
                    "string"
                  )
                )
              ),
              EntityTypes = list(
                "KEY"|"VALUE"|"COLUMN_HEADER"|"TABLE_TITLE"|"TABLE_FOOTER"|"TABLE_SECTION_TITLE"|"TABLE_SUMMARY"|"STRUCTURED_TABLE"|"SEMI_STRUCTURED_TABLE"
              ),
              SelectionStatus = "SELECTED"|"NOT_SELECTED",
              Page = 123,
              Query = list(
                Text = "string",
                Alias = "string",
                Pages = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      DocumentMetadata = list(
        Pages = 123
      ),
      AnalyzeIDModelVersion = "string"
    )

### Request syntax

    svc$analyze_id(
      DocumentPages = list(
        list(
          Bytes = raw,
          S3Object = list(
            Bucket = "string",
            Name = "string",
            Version = "string"
          )
        )
      )
    )
