<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_analyze_expense</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AnalyzeExpense synchronously analyzes an input document for financially related relationships between text

### Description

`analyze_expense` synchronously analyzes an input document for
financially related relationships between text.

Information is returned as `ExpenseDocuments` and seperated as follows:

-   `LineItemGroups`- A data set containing `LineItems` which store
    information about the lines of text, such as an item purchased and
    its price on a receipt.

-   `SummaryFields`- Contains all other information a receipt, such as
    header information or the vendors name.

### Usage

    textract_analyze_expense(Document)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="textract_analyze_expense_:_Document">Document</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentMetadata = list(
        Pages = 123
      ),
      ExpenseDocuments = list(
        list(
          ExpenseIndex = 123,
          SummaryFields = list(
            list(
              Type = list(
                Text = "string",
                Confidence = 123.0
              ),
              LabelDetection = list(
                Text = "string",
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
                Confidence = 123.0
              ),
              ValueDetection = list(
                Text = "string",
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
                Confidence = 123.0
              ),
              PageNumber = 123,
              Currency = list(
                Code = "string",
                Confidence = 123.0
              ),
              GroupProperties = list(
                list(
                  Types = list(
                    "string"
                  ),
                  Id = "string"
                )
              )
            )
          ),
          LineItemGroups = list(
            list(
              LineItemGroupIndex = 123,
              LineItems = list(
                list(
                  LineItemExpenseFields = list(
                    list(
                      Type = list(
                        Text = "string",
                        Confidence = 123.0
                      ),
                      LabelDetection = list(
                        Text = "string",
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
                        Confidence = 123.0
                      ),
                      ValueDetection = list(
                        Text = "string",
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
                        Confidence = 123.0
                      ),
                      PageNumber = 123,
                      Currency = list(
                        Code = "string",
                        Confidence = 123.0
                      ),
                      GroupProperties = list(
                        list(
                          Types = list(
                            "string"
                          ),
                          Id = "string"
                        )
                      )
                    )
                  )
                )
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
      )
    )

### Request syntax

    svc$analyze_expense(
      Document = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      )
    )
