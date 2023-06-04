<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_reusable_delegation_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a specified reusable delegation set, including the four name servers that are assigned to the delegation set

### Description

Retrieves information about a specified reusable delegation set,
including the four name servers that are assigned to the delegation set.

### Usage

    route53_get_reusable_delegation_set(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_get_reusable_delegation_set_:_Id">Id</code></td>
<td><p>[required] The ID of the reusable delegation set that you want to
get a list of name servers for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DelegationSet = list(
        Id = "string",
        CallerReference = "string",
        NameServers = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_reusable_delegation_set(
      Id = "string"
    )
