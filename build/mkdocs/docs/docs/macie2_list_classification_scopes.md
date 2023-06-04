<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_classification_scopes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a subset of information about the classification scope for an account

### Description

Retrieves a subset of information about the classification scope for an
account.

### Usage

    macie2_list_classification_scopes(name, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_list_classification_scopes_:_name">name</code></td>
<td><p>The name of the classification scope to retrieve the unique
identifier for.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_classification_scopes_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      classificationScopes = list(
        list(
          id = "string",
          name = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_classification_scopes(
      name = "string",
      nextToken = "string"
    )
