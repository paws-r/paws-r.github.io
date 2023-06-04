<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_managed_data_identifiers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about all the managed data identifiers that Amazon Macie currently provides

### Description

Retrieves information about all the managed data identifiers that Amazon
Macie currently provides.

### Usage

    macie2_list_managed_data_identifiers(nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_managed_data_identifiers_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          category = "FINANCIAL_INFORMATION"|"PERSONAL_INFORMATION"|"CREDENTIALS"|"CUSTOM_IDENTIFIER",
          id = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_managed_data_identifiers(
      nextToken = "string"
    )
