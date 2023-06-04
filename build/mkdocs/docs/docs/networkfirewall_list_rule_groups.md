<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_list_rule_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the metadata for the rule groups that you have defined

### Description

Retrieves the metadata for the rule groups that you have defined.
Depending on your setting for max results and the number of rule groups,
a single call might not return the full list.

### Usage

    networkfirewall_list_rule_groups(NextToken, MaxResults, Scope,
      ManagedType, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_list_rule_groups_:_NextToken">NextToken</code></td>
<td><p>When you request a list of objects with a <code>MaxResults</code>
setting, if the number of objects that are still available for retrieval
exceeds the maximum you requested, Network Firewall returns a
<code>NextToken</code> value in the response. To retrieve the next batch
of objects, use the token returned from the prior request in your next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_list_rule_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Network Firewall to
return for this request. If more objects are available, in the response,
Network Firewall provides a <code>NextToken</code> value that you can
use in a subsequent call to get the next batch of objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_list_rule_groups_:_Scope">Scope</code></td>
<td><p>The scope of the request. The default setting of
<code>ACCOUNT</code> or a setting of <code>NULL</code> returns all of
the rule groups in your account. A setting of <code>MANAGED</code>
returns all available managed rule groups.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_list_rule_groups_:_ManagedType">ManagedType</code></td>
<td><p>Indicates the general category of the Amazon Web Services managed
rule group.</p></td>
</tr>
<tr class="odd">
<td><code id="networkfirewall_list_rule_groups_:_Type">Type</code></td>
<td><p>Indicates whether the rule group is stateless or stateful. If the
rule group is stateless, it contains stateless rules. If it is stateful,
it contains stateful rules.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      RuleGroups = list(
        list(
          Name = "string",
          Arn = "string"
        )
      )
    )

### Request syntax

    svc$list_rule_groups(
      NextToken = "string",
      MaxResults = 123,
      Scope = "MANAGED"|"ACCOUNT",
      ManagedType = "AWS_MANAGED_THREAT_SIGNATURES"|"AWS_MANAGED_DOMAIN_LISTS",
      Type = "STATELESS"|"STATEFUL"
    )
