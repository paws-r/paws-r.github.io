<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_reusable_delegation_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of the reusable delegation sets that are associated with the current Amazon Web Services account

### Description

Retrieves a list of the reusable delegation sets that are associated
with the current Amazon Web Services account.

### Usage

    route53_list_reusable_delegation_sets(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_reusable_delegation_sets_:_Marker">Marker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more reusable delegation sets. To get
another group, submit another <code>list_reusable_delegation_sets</code>
request.</p>
<p>For the value of <code>marker</code>, specify the value of
<code>NextMarker</code> from the previous response, which is the ID of
the first reusable delegation set that Amazon Route 53 will return if
you submit another request.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more reusable delegation sets to
get.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_reusable_delegation_sets_:_MaxItems">MaxItems</code></td>
<td><p>The number of reusable delegation sets that you want Amazon Route
53 to return in the response to this request. If you specify a value
greater than 100, Route 53 returns only the first 100 reusable
delegation sets.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DelegationSets = list(
        list(
          Id = "string",
          CallerReference = "string",
          NameServers = list(
            "string"
          )
        )
      ),
      Marker = "string",
      IsTruncated = TRUE|FALSE,
      NextMarker = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_reusable_delegation_sets(
      Marker = "string",
      MaxItems = "string"
    )
