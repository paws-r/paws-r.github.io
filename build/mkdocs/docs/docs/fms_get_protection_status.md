<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_protection_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack

### Description

If you created a Shield Advanced policy, returns policy-level attack
summary information in the event of a potential DDoS attack. Other
policy types are currently unsupported.

### Usage

    fms_get_protection_status(PolicyId, MemberAccountId, StartTime, EndTime,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_get_protection_status_:_PolicyId">PolicyId</code></td>
<td><p>[required] The ID of the policy for which you want to get the
attack information.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_get_protection_status_:_MemberAccountId">MemberAccountId</code></td>
<td><p>The Amazon Web Services account that is in scope of the policy
that you want to get the details for.</p></td>
</tr>
<tr class="odd">
<td><code
id="fms_get_protection_status_:_StartTime">StartTime</code></td>
<td><p>The start of the time period to query for the attacks. This is a
<code>timestamp</code> type. The request syntax listing indicates a
<code>number</code> type because the default used by Firewall Manager is
Unix time in seconds. However, any valid <code>timestamp</code> format
is allowed.</p></td>
</tr>
<tr class="even">
<td><code id="fms_get_protection_status_:_EndTime">EndTime</code></td>
<td><p>The end of the time period to query for the attacks. This is a
<code>timestamp</code> type. The request syntax listing indicates a
<code>number</code> type because the default used by Firewall Manager is
Unix time in seconds. However, any valid <code>timestamp</code> format
is allowed.</p></td>
</tr>
<tr class="odd">
<td><code
id="fms_get_protection_status_:_NextToken">NextToken</code></td>
<td><p>If you specify a value for <code>MaxResults</code> and you have
more objects than the number that you specify for
<code>MaxResults</code>, Firewall Manager returns a
<code>NextToken</code> value in the response, which you can use to
retrieve another group of objects. For the second and subsequent
<code>get_protection_status</code> requests, specify the value of
<code>NextToken</code> from the previous response to get information
about another batch of objects.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_get_protection_status_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the number of objects that you want Firewall Manager to
return for this request. If you have more objects than the number that
you specify for <code>MaxResults</code>, the response includes a
<code>NextToken</code> value that you can use to get another batch of
objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AdminAccountId = "string",
      ServiceType = "WAF"|"WAFV2"|"SHIELD_ADVANCED"|"SECURITY_GROUPS_COMMON"|"SECURITY_GROUPS_CONTENT_AUDIT"|"SECURITY_GROUPS_USAGE_AUDIT"|"NETWORK_FIREWALL"|"DNS_FIREWALL"|"THIRD_PARTY_FIREWALL"|"IMPORT_NETWORK_FIREWALL",
      Data = "string",
      NextToken = "string"
    )

### Request syntax

    svc$get_protection_status(
      PolicyId = "string",
      MemberAccountId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      MaxResults = 123
    )
