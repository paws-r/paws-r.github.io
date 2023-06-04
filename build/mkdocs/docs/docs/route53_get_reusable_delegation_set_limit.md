<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_reusable_delegation_set_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the maximum number of hosted zones that you can associate with the specified reusable delegation set

### Description

Gets the maximum number of hosted zones that you can associate with the
specified reusable delegation set.

For the default limit, see
[Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
in the *Amazon Route 53 Developer Guide*. To request a higher limit,
open a case.

### Usage

    route53_get_reusable_delegation_set_limit(Type, DelegationSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_get_reusable_delegation_set_limit_:_Type">Type</code></td>
<td><p>[required] Specify
<code>MAX_ZONES_BY_REUSABLE_DELEGATION_SET</code> to get the maximum
number of hosted zones that you can associate with the specified
reusable delegation set.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_get_reusable_delegation_set_limit_:_DelegationSetId">DelegationSetId</code></td>
<td><p>[required] The ID of the delegation set that you want to get the
limit for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Limit = list(
        Type = "MAX_ZONES_BY_REUSABLE_DELEGATION_SET",
        Value = 123
      ),
      Count = 123
    )

### Request syntax

    svc$get_reusable_delegation_set_limit(
      Type = "MAX_ZONES_BY_REUSABLE_DELEGATION_SET",
      DelegationSetId = "string"
    )
