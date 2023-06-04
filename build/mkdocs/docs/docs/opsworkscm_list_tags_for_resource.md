<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups

### Description

Returns a list of tags that are applied to the specified AWS OpsWorks
for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or
backups.

### Usage

    opsworkscm_list_tags_for_resource(ResourceArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of an AWS OpsWorks
for Chef Automate or AWS OpsWorks for Puppet Enterprise server for which
you want to show applied tags. For example, <code
style="white-space: pre;">⁠arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>NextToken is a string that is returned in some command responses.
It indicates that not all entries have been returned, and that you must
run at least one more request to get remaining items. To get remaining
results, call <code>list_tags_for_resource</code> again, and assign the
token from the previous results as the value of the
<code>nextToken</code> parameter. If there are no more results, the
response object's <code>nextToken</code> parameter value is
<code>null</code>. Setting a <code>nextToken</code> value that was not
returned in your previous results causes an
<code>InvalidNextTokenException</code> to occur.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>To receive a paginated response, use this parameter to specify
the maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
