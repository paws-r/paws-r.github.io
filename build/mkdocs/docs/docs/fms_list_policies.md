<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_list_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of PolicySummary objects

### Description

Returns an array of `PolicySummary` objects.

### Usage

    fms_list_policies(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_list_policies_:_NextToken">NextToken</code></td>
<td><p>If you specify a value for <code>MaxResults</code> and you have
more <code>PolicySummary</code> objects than the number that you specify
for <code>MaxResults</code>, Firewall Manager returns a
<code>NextToken</code> value in the response that allows you to list
another group of <code>PolicySummary</code> objects. For the second and
subsequent <code>list_policies</code> requests, specify the value of
<code>NextToken</code> from the previous response to get information
about another batch of <code>PolicySummary</code> objects.</p></td>
</tr>
<tr class="even">
<td><code id="fms_list_policies_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the number of <code>PolicySummary</code> objects that
you want Firewall Manager to return for this request. If you have more
<code>PolicySummary</code> objects than the number that you specify for
<code>MaxResults</code>, the response includes a <code>NextToken</code>
value that you can use to get another batch of
<code>PolicySummary</code> objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyList = list(
        list(
          PolicyArn = "string",
          PolicyId = "string",
          PolicyName = "string",
          ResourceType = "string",
          SecurityServiceType = "WAF"|"WAFV2"|"SHIELD_ADVANCED"|"SECURITY_GROUPS_COMMON"|"SECURITY_GROUPS_CONTENT_AUDIT"|"SECURITY_GROUPS_USAGE_AUDIT"|"NETWORK_FIREWALL"|"DNS_FIREWALL"|"THIRD_PARTY_FIREWALL"|"IMPORT_NETWORK_FIREWALL",
          RemediationEnabled = TRUE|FALSE,
          DeleteUnusedFMManagedResources = TRUE|FALSE,
          PolicyStatus = "ACTIVE"|"OUT_OF_ADMIN_SCOPE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_policies(
      NextToken = "string",
      MaxResults = 123
    )
