<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_define_suggester</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures a suggester for a domain

### Description

Configures a suggester for a domain. A suggester enables you to display
possible matches before users finish typing their queries. When you
configure a suggester, you must specify the name of the text field you
want to search for possible matches and a unique name for the suggester.
For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
target="_blank">Getting Search Suggestions</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_define_suggester(DomainName, Suggester)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_define_suggester_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_define_suggester_:_Suggester">Suggester</code></td>
<td><p>[required]</p></td>
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

    svc$define_suggester(
      DomainName = "string",
      Suggester = list(
        SuggesterName = "string",
        DocumentSuggesterOptions = list(
          SourceField = "string",
          FuzzyMatching = "none"|"low"|"high",
          SortExpression = "string"
        )
      )
    )
