<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearch_describe_suggesters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the suggesters configured for a domain

### Description

Gets the suggesters configured for a domain. A suggester enables you to
display possible matches before users finish typing their queries. Can
be limited to specific suggesters by name. By default, shows all
suggesters and includes any pending changes to the configuration. Set
the `Deployed` option to `true` to show the active configuration and
exclude pending changes. For more information, see <a
href="https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
target="_blank">Getting Search Suggestions</a> in the *Amazon
CloudSearch Developer Guide*.

### Usage

    cloudsearch_describe_suggesters(DomainName, SuggesterNames, Deployed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudsearch_describe_suggesters_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearch_describe_suggesters_:_SuggesterNames">SuggesterNames</code></td>
<td><p>The suggesters you want to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudsearch_describe_suggesters_:_Deployed">Deployed</code></td>
<td><p>Whether to display the deployed configuration (<code>true</code>)
or include any pending changes (<code>false</code>). Defaults to
<code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Suggesters = list(
        list(
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
    )

### Request syntax

    svc$describe_suggesters(
      DomainName = "string",
      SuggesterNames = list(
        "string"
      ),
      Deployed = TRUE|FALSE
    )
