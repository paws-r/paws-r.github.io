<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_classifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an existing classifier (a GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier, depending on which field is present)

### Description

Modifies an existing classifier (a `GrokClassifier`, an `XMLClassifier`,
a `JsonClassifier`, or a `CsvClassifier`, depending on which field is
present).

### Usage

    glue_update_classifier(GrokClassifier, XMLClassifier, JsonClassifier,
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
id="glue_update_classifier_:_GrokClassifier">GrokClassifier</code></td>
<td><p>A <code>GrokClassifier</code> object with updated
fields.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_classifier_:_XMLClassifier">XMLClassifier</code></td>
<td><p>An <code>XMLClassifier</code> object with updated
fields.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_classifier_:_JsonClassifier">JsonClassifier</code></td>
<td><p>A <code>JsonClassifier</code> object with updated
fields.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_classifier_:_CsvClassifier">CsvClassifier</code></td>
<td><p>A <code>CsvClassifier</code> object with updated fields.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_classifier(
      GrokClassifier = list(
        Name = "string",
        Classification = "string",
        GrokPattern = "string",
        CustomPatterns = "string"
      ),
      XMLClassifier = list(
        Name = "string",
        Classification = "string",
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
