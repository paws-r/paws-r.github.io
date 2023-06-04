<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_classifiers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all classifier objects in the Data Catalog

### Description

Lists all classifier objects in the Data Catalog.

### Usage

    glue_get_classifiers(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_classifiers_:_MaxResults">MaxResults</code></td>
<td><p>The size of the list to return (optional).</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_classifiers_:_NextToken">NextToken</code></td>
<td><p>An optional continuation token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Classifiers = list(
        list(
          GrokClassifier = list(
            Name = "string",
            Classification = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastUpdated = as.POSIXct(
              "2015-01-01"
            ),
            Version = 123,
            GrokPattern = "string",
            CustomPatterns = "string"
          ),
          XMLClassifier = list(
            Name = "string",
            Classification = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastUpdated = as.POSIXct(
              "2015-01-01"
            ),
            Version = 123,
            RowTag = "string"
          ),
          JsonClassifier = list(
            Name = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastUpdated = as.POSIXct(
              "2015-01-01"
            ),
            Version = 123,
            JsonPath = "string"
          ),
          CsvClassifier = list(
            Name = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastUpdated = as.POSIXct(
              "2015-01-01"
            ),
            Version = 123,
            Delimiter = "string",
            QuoteSymbol = "string",
            ContainsHeader = "UNKNOWN"|"PRESENT"|"ABSENT",
            Header = list(
              "string"
            ),
            DisableValueTrimming = TRUE|FALSE,
            AllowSingleColumn = TRUE|FALSE,
            CustomDatatypeConfigured = TRUE|FALSE,
            CustomDatatypes = list(
              "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_classifiers(
      MaxResults = 123,
      NextToken = "string"
    )
