<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_delete_suggester</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a suggester

### Description

Deletes a suggester. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
target="_blank">Getting Search Suggestions</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_delete_suggester(DomainName, SuggesterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_delete_suggester_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_delete_suggester_:_SuggesterName">SuggesterName</code></td>
<td><p>[required] Specifies the name of the suggester you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Suggester = list(
        Options = list(
          SuggesterName = "string",
          DocumentSuggesterOptions = list(
            SourceField = "string",
            FuzzyMatching = "none"|"low"|"high",
            SortExpression = "string"
          )
        ),
        Status = list(
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateVersion = 123,
          State = "RequiresIndexDocuments"|"Processing"|"Active"|"FailedToValidate",
          PendingDeletion = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$delete_suggester(
      DomainName = "string",
      SuggesterName = "string"
    )
