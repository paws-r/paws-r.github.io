<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_get_expense_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the results for an Amazon Textract asynchronous operation that analyzes invoices and receipts

### Description

Gets the results for an Amazon Textract asynchronous operation that
analyzes invoices and receipts. Amazon Textract finds contact
information, items purchased, and vendor name, from input invoices and
receipts.

You start asynchronous invoice/receipt analysis by calling
`start_expense_analysis`, which returns a job identifier (`JobId`). Upon
completion of the invoice/receipt analysis, Amazon Textract publishes
the completion status to the Amazon Simple Notification Service (Amazon
SNS) topic. This topic must be registered in the initial call to
`start_expense_analysis`. To get the results of the invoice/receipt
analysis operation, first ensure that the status value published to the
Amazon SNS topic is `SUCCEEDED`. If so, call `get_expense_analysis`, and
pass the job identifier (`JobId`) from the initial call to
`start_expense_analysis`.

Use the MaxResults parameter to limit the number of blocks that are
returned. If there are more results than specified in `MaxResults`, the
value of `NextToken` in the operation response contains a pagination
token for getting the next set of results. To get the next page of
results, call `get_expense_analysis`, and populate the `NextToken`
request parameter with the token value that's returned from the previous
call to `get_expense_analysis`.

For more information, see [Analyzing Invoices and
Receipts](https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html).

### Usage

    textract_get_expense_analysis(JobId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="textract_get_expense_analysis_:_JobId">JobId</code></td>
<td><p>[required] A unique identifier for the text detection job. The
<code>JobId</code> is returned from <code>start_expense_analysis</code>.
A <code>JobId</code> value is only valid for 7 days.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_get_expense_analysis_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per paginated call. The
largest value you can specify is 20. If you specify a value greater than
20, a maximum of 20 results is returned. The default value is
20.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_get_expense_analysis_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there are more
blocks to retrieve), Amazon Textract returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
blocks.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentMetadata = list(
        Pages = 123
      ),
      JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"PARTIAL_SUCCESS",
      NextToken = "string",
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
      ),
      Warnings = list(
        list(
          ErrorCode = "string",
          Pages = list(
            123
          )
        )
      ),
      StatusMessage = "string",
      AnalyzeExpenseModelVersion = "string"
    )

### Request syntax

    svc$get_expense_analysis(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
