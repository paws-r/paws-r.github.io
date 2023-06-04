<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudsearchdomain_suggest</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves autocomplete suggestions for a partial query string

### Description

Retrieves autocomplete suggestions for a partial query string. You can
use suggestions enable you to display likely matches before users finish
typing. In Amazon CloudSearch, suggestions are based on the contents of
a particular text field. When you request suggestions, Amazon
CloudSearch finds all of the documents whose values in the suggester
field start with the specified query string. The beginning of the field
must match the query string to be considered a match.

For more information about configuring suggesters and retrieving
suggestions, see [Getting
Suggestions](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
in the *Amazon CloudSearch Developer Guide*.

The endpoint for submitting `suggest` requests is domain-specific. You
submit suggest requests to a domain's search endpoint. To get the search
endpoint for your domain, use the Amazon CloudSearch configuration
service `DescribeDomains` action. A domain's endpoints are also
displayed on the domain dashboard in the Amazon CloudSearch console.

### Usage

    cloudsearchdomain_suggest(query, suggester, size)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudsearchdomain_suggest_:_query">query</code></td>
<td><p>[required] Specifies the string for which you want to get
suggestions.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudsearchdomain_suggest_:_suggester">suggester</code></td>
<td><p>[required] Specifies the name of the suggester to use to find
suggested matches.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudsearchdomain_suggest_:_size">size</code></td>
<td><p>Specifies the maximum number of suggestions to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      status = list(
        timems = 123,
        rid = "string"
      ),
      suggest = list(
        query = "string",
        found = 123,
        suggestions = list(
          list(
            suggestion = "string",
            score = 123,
            id = "string"
          )
        )
      )
    )

### Request syntax

    svc$suggest(
      query = "string",
      suggester = "string",
      size = 123
    )
