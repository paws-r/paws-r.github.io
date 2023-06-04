<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_list_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Recycle Bin retention rules in the Region

### Description

Lists the Recycle Bin retention rules in the Region.

### Usage

    recyclebin_list_rules(MaxResults, NextToken, ResourceType, ResourceTags,
      LockState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="recyclebin_list_rules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code id="recyclebin_list_rules_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="recyclebin_list_rules_:_ResourceType">ResourceType</code></td>
<td><p>[required] The resource type retained by the retention rule. Only
retention rules that retain the specified resource type are listed.
Currently, only Amazon EBS snapshots and EBS-backed AMIs are supported.
To list retention rules that retain snapshots, specify
<code>EBS_SNAPSHOT</code>. To list retention rules that retain
EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="recyclebin_list_rules_:_ResourceTags">ResourceTags</code></td>
<td><p>Information about the resource tags used to identify resources
that are retained by the retention rule.</p></td>
</tr>
<tr class="odd">
<td><code id="recyclebin_list_rules_:_LockState">LockState</code></td>
<td><p>The lock state of the retention rules to list. Only retention
rules with the specified lock state are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rules = list(
        list(
          Identifier = "string",
          Description = "string",
          RetentionPeriod = list(
            RetentionPeriodValue = 123,
            RetentionPeriodUnit = "DAYS"
          ),
          LockState = "locked"|"pending_unlock"|"unlocked"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_rules(
      MaxResults = 123,
      NextToken = "string",
      ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
      ResourceTags = list(
        list(
          ResourceTagKey = "string",
          ResourceTagValue = "string"
        )
      ),
      LockState = "locked"|"pending_unlock"|"unlocked"
    )
