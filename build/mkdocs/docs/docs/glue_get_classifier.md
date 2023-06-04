<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_classifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a classifier by name

### Description

Retrieve a classifier by name.

### Usage

    glue_get_classifier(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_classifier_:_Name">Name</code></td>
<td><p>[required] Name of the classifier to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Classifier = list(
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
    )

### Request syntax

    svc$get_classifier(
      Name = "string"
    )
