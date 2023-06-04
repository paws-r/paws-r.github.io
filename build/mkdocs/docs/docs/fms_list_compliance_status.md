<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_list_compliance_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of PolicyComplianceStatus objects

### Description

Returns an array of `PolicyComplianceStatus` objects. Use
`PolicyComplianceStatus` to get a summary of which member accounts are
protected by the specified policy.

### Usage

    fms_list_compliance_status(PolicyId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_list_compliance_status_:_PolicyId">PolicyId</code></td>
<td><p>[required] The ID of the Firewall Manager policy that you want
the details for.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_list_compliance_status_:_NextToken">NextToken</code></td>
<td><p>If you specify a value for <code>MaxResults</code> and you have
more <code>PolicyComplianceStatus</code> objects than the number that
you specify for <code>MaxResults</code>, Firewall Manager returns a
<code>NextToken</code> value in the response that allows you to list
another group of <code>PolicyComplianceStatus</code> objects. For the
second and subsequent <code>list_compliance_status</code> requests,
specify the value of <code>NextToken</code> from the previous response
to get information about another batch of
<code>PolicyComplianceStatus</code> objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="fms_list_compliance_status_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the number of <code>PolicyComplianceStatus</code>
objects that you want Firewall Manager to return for this request. If
you have more <code>PolicyComplianceStatus</code> objects than the
number that you specify for <code>MaxResults</code>, the response
includes a <code>NextToken</code> value that you can use to get another
batch of <code>PolicyComplianceStatus</code> objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyComplianceStatusList = list(
        list(
          PolicyOwner = "string",
          PolicyId = "string",
          PolicyName = "string",
          MemberAccount = "string",
          EvaluationResults = list(
            list(
              ComplianceStatus = "COMPLIANT"|"NON_COMPLIANT",
              ViolatorCount = 123,
              EvaluationLimitExceeded = TRUE|FALSE
            )
          ),
          LastUpdated = as.POSIXct(
            "2015-01-01"
          ),
          IssueInfoMap = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_compliance_status(
      PolicyId = "string",
      NextToken = "string",
      MaxResults = 123
    )
