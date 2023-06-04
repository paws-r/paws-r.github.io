<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_classifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a classifier in the user's account

### Description

Creates a classifier in the user's account. This can be a
`GrokClassifier`, an `XMLClassifier`, a `JsonClassifier`, or a
`CsvClassifier`, depending on which field of the request is present.

### Usage

    glue_create_classifier(GrokClassifier, XMLClassifier, JsonClassifier,
      CsvClassifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_create_classifier_:_GrokClassifier">GrokClassifier</code></td>
<td><p>A <code>GrokClassifier</code> object specifying the classifier to
create.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_classifier_:_XMLClassifier">XMLClassifier</code></td>
<td><p>An <code>XMLClassifier</code> object specifying the classifier to
create.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_classifier_:_JsonClassifier">JsonClassifier</code></td>
<td><p>A <code>JsonClassifier</code> object specifying the classifier to
create.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_classifier_:_CsvClassifier">CsvClassifier</code></td>
<td><p>A <code>CsvClassifier</code> object specifying the classifier to
create.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_classifier(
      GrokClassifier = list(
        Classification = "string",
        Name = "string",
        GrokPattern = "string",
        CustomPatterns = "string"
      ),
      XMLClassifier = list(
        Classification = "string",
        Name = "string",
        RowTag = "string"
      ),
      JsonClassifier = list(
        Name = "string",
        JsonPath = "string"
      ),
      CsvClassifier = list(
        Name = "string",
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
